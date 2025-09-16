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

        - field_name: velocity
          target_name: Unspecified-2-HEX
          field_size: 3
          field_type: node_rank

        - field_name: velocity_ra_one
          target_name: Unspecified-2-HEX
          field_size: 3
          field_type: node_rank

#    now all of the probes


        - field_name: velocity_probe
          target_name: [probeNormWRw0,probeNormWRw1,probeNormWRw2,probeNormWRw3]
          field_size: 3
          field_type: node_rank

        - field_name: velocity_ra_one_probe
          target_name: [probeNormWRw0,probeNormWRw1,probeNormWRw2,probeNormWRw3]
          field_size: 3
          field_type: node_rank

    data_probes:

      output_frequency: 1
      output_precision: 16
      output_width: 32

      search_tolerance: 1.0e-5
      search_expansion_factor: 2.0

      specifications:

        - name: probe_surface
          from_target_part: [Unspecified-2-HEX]

          line_of_site_specifications:

            - name: probeNormWRw0    # x: 0
              number_of_points: 101
              tip_coordinates: [0,0.6,1]
              tail_coordinates: [0,0.1,1]

            - name: probeNormWRw1    # x: 0.5
              number_of_points: 101
              tip_coordinates: [0.649858,0.477014,1]
              tail_coordinates: [0.5,6.12323e-18,1]

            - name: probeNormWRw2    # x: 1
              number_of_points: 101
              tip_coordinates: [1,0.4,1]
              tail_coordinates: [1,-0.1,1]

            - name: probeNormWRw3    # x: 1.5
              number_of_points: 101
              tip_coordinates: [1.35014,0.477014,1]
              tail_coordinates: [1.5,-1.83697e-17,1]

          output_variables:
            - field_name: velocity
              field_size: 3
            - field_name: velocity_ra_one
              field_size: 3

    solution_options:
      name: myOptions
      input_variables_from_file_restoration_time: 1000.0
      input_variables_interpolate_in_time: no

      options:    
        - input_variables_from_file:
            velocity: velocity 
            velocity_ra_one: velocity_ra_one 

    output:
      output_data_base_name: output/vertNaluWRnormWaleLES.e
      output_frequency: 1
      output_node_set: no
      output_variables:
       - velocity_probe
       - velocity_ra_one_probe

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
