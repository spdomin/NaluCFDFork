/*------------------------------------------------------------------------*/
/*  Copyright 2014 Sandia Corporation.                                    */
/*  This software is released under the license detailed                  */
/*  in the file, LICENSE, which is located in the top-level Nalu          */
/*  directory structure                                                   */
/*------------------------------------------------------------------------*/

#ifndef MomentumMLWallFunctionElemKernel_h
#define MomentumMLWallFunctionElemKernel_h

#include "kernel/Kernel.h"
#include "FieldTypeDef.h"

#include <stk_mesh/base/BulkData.hpp>
#include <stk_mesh/base/Entity.hpp>

#include <Kokkos_Core.hpp>

namespace sierra {
namespace nalu {

class SolutionOptions;
class MasterElement;
class ElemDataRequests;

/** Wall function approach momentum equation (velocity DOF)
 */
template<typename BcAlgTraits>
class MomentumMLWallFunctionElemKernel: public Kernel
{
public:
  MomentumMLWallFunctionElemKernel(
    const stk::mesh::BulkData&,
    const SolutionOptions&,
    ElemDataRequests&);

  virtual ~MomentumMLWallFunctionElemKernel();

  /** Execute the kernel within a Kokkos loop and populate the LHS and RHS for
   *  the linear solve
   */
  virtual void execute(
    SharedMemView<DoubleType**>&,
    SharedMemView<DoubleType*>&,
    ScratchViews<DoubleType>&);

private:
  MomentumMLWallFunctionElemKernel() = delete;
  
  GenericFieldType *exposedAreaVec_{nullptr};
  GenericFieldType *vectorTauWall_{nullptr};
  GenericFieldType *wallNormalDistanceBip_{nullptr};
  ScalarFieldType *viscosity_{nullptr};

  // include approximate LHS
  const double lhsFac_;

  // Integration point to node mapping 
  const int *ipNodeMap_{nullptr};

  // fixed scratch space
  AlignedViewType<DoubleType[BcAlgTraits::numFaceIp_][BcAlgTraits::nodesPerFace_]> vf_shape_function_{"vf_shape_function"};
};

}  // nalu
}  // sierra

#endif /* MomentumMLWallFunctionElemKernel_h */
