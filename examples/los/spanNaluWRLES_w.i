Simulations:
  - name: sim1
    time_integrator: ti_1
    optimizer: opt1

realms:

  - name: ioRealm
    mesh: channel_ebvc_wale-001.e
    type: initialization

    field_registration:
      specifications:

        - field_name: tau_wall
          target_name: BottomWall
          field_size: 1
          field_type: node_rank

        - field_name: tau_wall_ra_two
          target_name: BottomWall
          field_size: 1
          field_type: node_rank

        - field_name: yplus
          target_name: BottomWall
          field_size: 1
          field_type: node_rank

        - field_name: yplus_ra_two
          target_name: BottomWall
          field_size: 1
          field_type: node_rank

        - field_name: pressure
          target_name: BottomWall
          field_size: 1
          field_type: node_rank

        - field_name: pressure_ra_one
          target_name: BottomWall
          field_size: 1
          field_type: node_rank

#    now all of the probes

        - field_name: pressure_probe
          target_name: [probeWRw0,probeWRw1,probeWRw2,probeWRw3,probeWRw4,probeWRw5,probeWRw6,probeWRw7,probeWRw8,probeWRw9,probeWRw10,probeWRw11,probeWRw12,probeWRw13,probeWRw14,probeWRw15,probeWRw16,probeWRw17,probeWRw18,probeWRw19,probeWRw20,probeWRw21,probeWRw22,probeWRw23,probeWRw24,probeWRw25,probeWRw26,probeWRw27,probeWRw28,probeWRw29,probeWRw30,probeWRw31,probeWRw32,probeWRw33,probeWRw34,probeWRw35,probeWRw36,probeWRw37,probeWRw38,probeWRw39]
          field_size: 1
          field_type: node_rank

        - field_name: pressure_ra_one_probe
          target_name: [probeWRw0,probeWRw1,probeWRw2,probeWRw3,probeWRw4,probeWRw5,probeWRw6,probeWRw7,probeWRw8,probeWRw9,probeWRw10,probeWRw11,probeWRw12,probeWRw13,probeWRw14,probeWRw15,probeWRw16,probeWRw17,probeWRw18,probeWRw19,probeWRw20,probeWRw21,probeWRw22,probeWRw23,probeWRw24,probeWRw25,probeWRw26,probeWRw27,probeWRw28,probeWRw29,probeWRw30,probeWRw31,probeWRw32,probeWRw33,probeWRw34,probeWRw35,probeWRw36,probeWRw37,probeWRw38,probeWRw39]
          field_size: 1
          field_type: node_rank

        - field_name: tau_wall_probe
          target_name: [probeWRw0,probeWRw1,probeWRw2,probeWRw3,probeWRw4,probeWRw5,probeWRw6,probeWRw7,probeWRw8,probeWRw9,probeWRw10,probeWRw11,probeWRw12,probeWRw13,probeWRw14,probeWRw15,probeWRw16,probeWRw17,probeWRw18,probeWRw19,probeWRw20,probeWRw21,probeWRw22,probeWRw23,probeWRw24,probeWRw25,probeWRw26,probeWRw27,probeWRw28,probeWRw29,probeWRw30,probeWRw31,probeWRw32,probeWRw33,probeWRw34,probeWRw35,probeWRw36,probeWRw37,probeWRw38,probeWRw39]
          field_size: 1
          field_type: node_rank

        - field_name: tau_wall_ra_two_probe
          target_name: [probeWRw0,probeWRw1,probeWRw2,probeWRw3,probeWRw4,probeWRw5,probeWRw6,probeWRw7,probeWRw8,probeWRw9,probeWRw10,probeWRw11,probeWRw12,probeWRw13,probeWRw14,probeWRw15,probeWRw16,probeWRw17,probeWRw18,probeWRw19,probeWRw20,probeWRw21,probeWRw22,probeWRw23,probeWRw24,probeWRw25,probeWRw26,probeWRw27,probeWRw28,probeWRw29,probeWRw30,probeWRw31,probeWRw32,probeWRw33,probeWRw34,probeWRw35,probeWRw36,probeWRw37,probeWRw38,probeWRw39]
          field_size: 1
          field_type: node_rank

        - field_name: yplus_probe
          target_name: [probeWRw0,probeWRw1,probeWRw2,probeWRw3,probeWRw4,probeWRw5,probeWRw6,probeWRw7,probeWRw8,probeWRw9,probeWRw10,probeWRw11,probeWRw12,probeWRw13,probeWRw14,probeWRw15,probeWRw16,probeWRw17,probeWRw18,probeWRw19,probeWRw20,probeWRw21,probeWRw22,probeWRw23,probeWRw24,probeWRw25,probeWRw26,probeWRw27,probeWRw28,probeWRw29,probeWRw30,probeWRw31,probeWRw32,probeWRw33,probeWRw34,probeWRw35,probeWRw36,probeWRw37,probeWRw38,probeWRw39]
          field_size: 1
          field_type: node_rank

        - field_name: yplus_ra_two_probe
          target_name: [probeWRw0,probeWRw1,probeWRw2,probeWRw3,probeWRw4,probeWRw5,probeWRw6,probeWRw7,probeWRw8,probeWRw9,probeWRw10,probeWRw11,probeWRw12,probeWRw13,probeWRw14,probeWRw15,probeWRw16,probeWRw17,probeWRw18,probeWRw19,probeWRw20,probeWRw21,probeWRw22,probeWRw23,probeWRw24,probeWRw25,probeWRw26,probeWRw27,probeWRw28,probeWRw29,probeWRw30,probeWRw31,probeWRw32,probeWRw33,probeWRw34,probeWRw35,probeWRw36,probeWRw37,probeWRw38,probeWRw39]
          field_size: 1
          field_type: node_rank

    data_probes:

      output_frequency: 1
      output_precision: 16
      output_width: 32

      search_tolerance: 1.0e-5
      search_expansion_factor: 2.0

      specifications:

        - name: probe_surface
          from_target_part: [BottomWall]

          line_of_site_specifications:

            - name: probeWRw0    # x: 0
              number_of_points: 101
              tip_coordinates: [0,0.1,2]
              tail_coordinates: [0,0.1,0]

            - name: probeWRw1    # x: 0.05
              number_of_points: 101
              tip_coordinates: [0.05,0.0987688,2]
              tail_coordinates: [0.05,0.0987688,0]

            - name: probeWRw2    # x: 0.1
              number_of_points: 101
              tip_coordinates: [0.1,0.0951057,2]
              tail_coordinates: [0.1,0.0951057,0]

            - name: probeWRw3    # x: 0.15
              number_of_points: 101
              tip_coordinates: [0.15,0.0891007,2]
              tail_coordinates: [0.15,0.0891007,0]

            - name: probeWRw4    # x: 0.2
              number_of_points: 101
              tip_coordinates: [0.2,0.0809017,2]
              tail_coordinates: [0.2,0.0809017,0]

            - name: probeWRw5    # x: 0.25
              number_of_points: 101
              tip_coordinates: [0.25,0.0707107,2]
              tail_coordinates: [0.25,0.0707107,0]

            - name: probeWRw6    # x: 0.3
              number_of_points: 101
              tip_coordinates: [0.3,0.0587785,2]
              tail_coordinates: [0.3,0.0587785,0]

            - name: probeWRw7    # x: 0.35
              number_of_points: 101
              tip_coordinates: [0.35,0.045399,2]
              tail_coordinates: [0.35,0.045399,0]

            - name: probeWRw8    # x: 0.4
              number_of_points: 101
              tip_coordinates: [0.4,0.0309017,2]
              tail_coordinates: [0.4,0.0309017,0]

            - name: probeWRw9    # x: 0.45
              number_of_points: 101
              tip_coordinates: [0.45,0.0156434,2]
              tail_coordinates: [0.45,0.0156434,0]

            - name: probeWRw10    # x: 0.5
              number_of_points: 101
              tip_coordinates: [0.5,6.12323e-18,2]
              tail_coordinates: [0.5,6.12323e-18,0]

            - name: probeWRw11    # x: 0.55
              number_of_points: 101
              tip_coordinates: [0.55,-0.0156434,2]
              tail_coordinates: [0.55,-0.0156434,0]

            - name: probeWRw12    # x: 0.6
              number_of_points: 101
              tip_coordinates: [0.6,-0.0309017,2]
              tail_coordinates: [0.6,-0.0309017,0]

            - name: probeWRw13    # x: 0.65
              number_of_points: 101
              tip_coordinates: [0.65,-0.045399,2]
              tail_coordinates: [0.65,-0.045399,0]

            - name: probeWRw14    # x: 0.7
              number_of_points: 101
              tip_coordinates: [0.7,-0.0587785,2]
              tail_coordinates: [0.7,-0.0587785,0]

            - name: probeWRw15    # x: 0.75
              number_of_points: 101
              tip_coordinates: [0.75,-0.0707107,2]
              tail_coordinates: [0.75,-0.0707107,0]

            - name: probeWRw16    # x: 0.8
              number_of_points: 101
              tip_coordinates: [0.8,-0.0809017,2]
              tail_coordinates: [0.8,-0.0809017,0]

            - name: probeWRw17    # x: 0.85
              number_of_points: 101
              tip_coordinates: [0.85,-0.0891007,2]
              tail_coordinates: [0.85,-0.0891007,0]

            - name: probeWRw18    # x: 0.9
              number_of_points: 101
              tip_coordinates: [0.9,-0.0951057,2]
              tail_coordinates: [0.9,-0.0951057,0]

            - name: probeWRw19    # x: 0.95
              number_of_points: 101
              tip_coordinates: [0.95,-0.0987688,2]
              tail_coordinates: [0.95,-0.0987688,0]

            - name: probeWRw20    # x: 1
              number_of_points: 101
              tip_coordinates: [1,-0.1,2]
              tail_coordinates: [1,-0.1,0]

            - name: probeWRw21    # x: 1.05
              number_of_points: 101
              tip_coordinates: [1.05,-0.0987688,2]
              tail_coordinates: [1.05,-0.0987688,0]

            - name: probeWRw22    # x: 1.1
              number_of_points: 101
              tip_coordinates: [1.1,-0.0951057,2]
              tail_coordinates: [1.1,-0.0951057,0]

            - name: probeWRw23    # x: 1.15
              number_of_points: 101
              tip_coordinates: [1.15,-0.0891007,2]
              tail_coordinates: [1.15,-0.0891007,0]

            - name: probeWRw24    # x: 1.2
              number_of_points: 101
              tip_coordinates: [1.2,-0.0809017,2]
              tail_coordinates: [1.2,-0.0809017,0]

            - name: probeWRw25    # x: 1.25
              number_of_points: 101
              tip_coordinates: [1.25,-0.0707107,2]
              tail_coordinates: [1.25,-0.0707107,0]

            - name: probeWRw26    # x: 1.3
              number_of_points: 101
              tip_coordinates: [1.3,-0.0587785,2]
              tail_coordinates: [1.3,-0.0587785,0]

            - name: probeWRw27    # x: 1.35
              number_of_points: 101
              tip_coordinates: [1.35,-0.045399,2]
              tail_coordinates: [1.35,-0.045399,0]

            - name: probeWRw28    # x: 1.4
              number_of_points: 101
              tip_coordinates: [1.4,-0.0309017,2]
              tail_coordinates: [1.4,-0.0309017,0]

            - name: probeWRw29    # x: 1.45
              number_of_points: 101
              tip_coordinates: [1.45,-0.0156434,2]
              tail_coordinates: [1.45,-0.0156434,0]

            - name: probeWRw30    # x: 1.5
              number_of_points: 101
              tip_coordinates: [1.5,-1.83697e-17,2]
              tail_coordinates: [1.5,-1.83697e-17,0]

            - name: probeWRw31    # x: 1.55
              number_of_points: 101
              tip_coordinates: [1.55,0.0156434,2]
              tail_coordinates: [1.55,0.0156434,0]

            - name: probeWRw32    # x: 1.6
              number_of_points: 101
              tip_coordinates: [1.6,0.0309017,2]
              tail_coordinates: [1.6,0.0309017,0]

            - name: probeWRw33    # x: 1.65
              number_of_points: 101
              tip_coordinates: [1.65,0.045399,2]
              tail_coordinates: [1.65,0.045399,0]

            - name: probeWRw34    # x: 1.7
              number_of_points: 101
              tip_coordinates: [1.7,0.0587785,2]
              tail_coordinates: [1.7,0.0587785,0]

            - name: probeWRw35    # x: 1.75
              number_of_points: 101
              tip_coordinates: [1.75,0.0707107,2]
              tail_coordinates: [1.75,0.0707107,0]

            - name: probeWRw36    # x: 1.8
              number_of_points: 101
              tip_coordinates: [1.8,0.0809017,2]
              tail_coordinates: [1.8,0.0809017,0]

            - name: probeWRw37    # x: 1.85
              number_of_points: 101
              tip_coordinates: [1.85,0.0891007,2]
              tail_coordinates: [1.85,0.0891007,0]

            - name: probeWRw38    # x: 1.9
              number_of_points: 101
              tip_coordinates: [1.9,0.0951057,2]
              tail_coordinates: [1.9,0.0951057,0]

            - name: probeWRw39    # x: 1.95
              number_of_points: 101
              tip_coordinates: [1.95,0.0987688,2]
              tail_coordinates: [1.95,0.0987688,0]

          output_variables:
            - field_name: pressure
              field_size: 1
            - field_name: pressure_ra_one
              field_size: 1
            - field_name: tau_wall
              field_size: 1
            - field_name: tau_wall_ra_two
              field_size: 1
            - field_name: yplus
              field_size: 1
            - field_name: yplus_ra_two
              field_size: 1

    solution_options:
      name: myOptions
      input_variables_from_file_restoration_time: 1000.0
      input_variables_interpolate_in_time: no

      options:    
        - input_variables_from_file:
            pressure: pressure 
            tau_wall: tau_wall
            yplus: yplus
            pressure_ra_one: pressure_ra_one 
            tau_wall_ra_two: tau_wall_ra_two
            yplus_ra_two: yplus_ra_two

    output:
      output_data_base_name: output/spanNaluWRLES.e
      output_frequency: 1
      output_node_set: no
      output_variables:
       - pressure_ra_one_probe
       - pressure
       - pressure_probe
       - pressure_ra_one
       - pressure_ra_one_probe
       - tau_wall
       - tau_wall_probe
       - tau_wall_ra_two
       - tau_wall_ra_two_probe
       - yplus
       - yplus_probe
       - yplus_ra_two
       - yplus_ra_two_probe

Time_Integrators:
  - StandardTimeIntegrator:
      name: ti_1
      start_time: 0
      termination_step_count: 1
      time_step: 0.00001
      time_stepping_type: adaptive
      time_step_count: 0
      second_order_accuracy: yes

      realms:
        - ioRealm
