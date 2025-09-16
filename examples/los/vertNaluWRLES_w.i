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
          target_name: [probeVertWRw0,probeVertWRw1,probeVertWRw2,probeVertWRw3,probeVertWRw4,probeVertWRw5,probeVertWRw6,probeVertWRw7,probeVertWRw8,probeVertWRw9,probeVertWRw10,probeVertWRw11,probeVertWRw12,probeVertWRw13,probeVertWRw14,probeVertWRw15,probeVertWRw16,probeVertWRw17,probeVertWRw18,probeVertWRw19,probeVertWRw20,probeVertWRw21,probeVertWRw22,probeVertWRw23,probeVertWRw24,probeVertWRw25,probeVertWRw26,probeVertWRw27,probeVertWRw28,probeVertWRw29,probeVertWRw30,probeVertWRw31,probeVertWRw32,probeVertWRw33,probeVertWRw34,probeVertWRw35,probeVertWRw36,probeVertWRw37,probeVertWRw38,probeVertWRw39]
          field_size: 3
          field_type: node_rank

        - field_name: velocity_ra_one_probe
          target_name: [probeVertWRw0,probeVertWRw1,probeVertWRw2,probeVertWRw3,probeVertWRw4,probeVertWRw5,probeVertWRw6,probeVertWRw7,probeVertWRw8,probeVertWRw9,probeVertWRw10,probeVertWRw11,probeVertWRw12,probeVertWRw13,probeVertWRw14,probeVertWRw15,probeVertWRw16,probeVertWRw17,probeVertWRw18,probeVertWRw19,probeVertWRw20,probeVertWRw21,probeVertWRw22,probeVertWRw23,probeVertWRw24,probeVertWRw25,probeVertWRw26,probeVertWRw27,probeVertWRw28,probeVertWRw29,probeVertWRw30,probeVertWRw31,probeVertWRw32,probeVertWRw33,probeVertWRw34,probeVertWRw35,probeVertWRw36,probeVertWRw37,probeVertWRw38,probeVertWRw39]
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

            - name: probeVertWRw0    # x: 0
              number_of_points: 101
              tip_coordinates: [0,0.6,2]
              tail_coordinates: [0,0.1,2]

            - name: probeVertWRw1    # x: 0.05
              number_of_points: 101
              tip_coordinates: [0.05,0.598769,2]
              tail_coordinates: [0.05,0.0987688,2]

            - name: probeVertWRw2    # x: 0.1
              number_of_points: 101
              tip_coordinates: [0.1,0.595106,2]
              tail_coordinates: [0.1,0.0951057,2]

            - name: probeVertWRw3    # x: 0.15
              number_of_points: 101
              tip_coordinates: [0.15,0.589101,2]
              tail_coordinates: [0.15,0.0891007,2]

            - name: probeVertWRw4    # x: 0.2
              number_of_points: 101
              tip_coordinates: [0.2,0.580902,2]
              tail_coordinates: [0.2,0.0809017,2]

            - name: probeVertWRw5    # x: 0.25
              number_of_points: 101
              tip_coordinates: [0.25,0.570711,2]
              tail_coordinates: [0.25,0.0707107,2]

            - name: probeVertWRw6    # x: 0.3
              number_of_points: 101
              tip_coordinates: [0.3,0.558779,2]
              tail_coordinates: [0.3,0.0587785,2]

            - name: probeVertWRw7    # x: 0.35
              number_of_points: 101
              tip_coordinates: [0.35,0.545399,2]
              tail_coordinates: [0.35,0.045399,2]

            - name: probeVertWRw8    # x: 0.4
              number_of_points: 101
              tip_coordinates: [0.4,0.530902,2]
              tail_coordinates: [0.4,0.0309017,2]

            - name: probeVertWRw9    # x: 0.45
              number_of_points: 101
              tip_coordinates: [0.45,0.515643,2]
              tail_coordinates: [0.45,0.0156434,2]

            - name: probeVertWRw10    # x: 0.5
              number_of_points: 101
              tip_coordinates: [0.5,0.5,2]
              tail_coordinates: [0.5,6.12323e-18,2]

            - name: probeVertWRw11    # x: 0.55
              number_of_points: 101
              tip_coordinates: [0.55,0.484357,2]
              tail_coordinates: [0.55,-0.0156434,2]

            - name: probeVertWRw12    # x: 0.6
              number_of_points: 101
              tip_coordinates: [0.6,0.469098,2]
              tail_coordinates: [0.6,-0.0309017,2]

            - name: probeVertWRw13    # x: 0.65
              number_of_points: 101
              tip_coordinates: [0.65,0.454601,2]
              tail_coordinates: [0.65,-0.045399,2]

            - name: probeVertWRw14    # x: 0.7
              number_of_points: 101
              tip_coordinates: [0.7,0.441221,2]
              tail_coordinates: [0.7,-0.0587785,2]

            - name: probeVertWRw15    # x: 0.75
              number_of_points: 101
              tip_coordinates: [0.75,0.429289,2]
              tail_coordinates: [0.75,-0.0707107,2]

            - name: probeVertWRw16    # x: 0.8
              number_of_points: 101
              tip_coordinates: [0.8,0.419098,2]
              tail_coordinates: [0.8,-0.0809017,2]

            - name: probeVertWRw17    # x: 0.85
              number_of_points: 101
              tip_coordinates: [0.85,0.410899,2]
              tail_coordinates: [0.85,-0.0891007,2]

            - name: probeVertWRw18    # x: 0.9
              number_of_points: 101
              tip_coordinates: [0.9,0.404894,2]
              tail_coordinates: [0.9,-0.0951057,2]

            - name: probeVertWRw19    # x: 0.95
              number_of_points: 101
              tip_coordinates: [0.95,0.401231,2]
              tail_coordinates: [0.95,-0.0987688,2]

            - name: probeVertWRw20    # x: 1
              number_of_points: 101
              tip_coordinates: [1,0.4,2]
              tail_coordinates: [1,-0.1,2]

            - name: probeVertWRw21    # x: 1.05
              number_of_points: 101
              tip_coordinates: [1.05,0.401231,2]
              tail_coordinates: [1.05,-0.0987688,2]

            - name: probeVertWRw22    # x: 1.1
              number_of_points: 101
              tip_coordinates: [1.1,0.404894,2]
              tail_coordinates: [1.1,-0.0951057,2]

            - name: probeVertWRw23    # x: 1.15
              number_of_points: 101
              tip_coordinates: [1.15,0.410899,2]
              tail_coordinates: [1.15,-0.0891007,2]

            - name: probeVertWRw24    # x: 1.2
              number_of_points: 101
              tip_coordinates: [1.2,0.419098,2]
              tail_coordinates: [1.2,-0.0809017,2]

            - name: probeVertWRw25    # x: 1.25
              number_of_points: 101
              tip_coordinates: [1.25,0.429289,2]
              tail_coordinates: [1.25,-0.0707107,2]

            - name: probeVertWRw26    # x: 1.3
              number_of_points: 101
              tip_coordinates: [1.3,0.441221,2]
              tail_coordinates: [1.3,-0.0587785,2]

            - name: probeVertWRw27    # x: 1.35
              number_of_points: 101
              tip_coordinates: [1.35,0.454601,2]
              tail_coordinates: [1.35,-0.045399,2]

            - name: probeVertWRw28    # x: 1.4
              number_of_points: 101
              tip_coordinates: [1.4,0.469098,2]
              tail_coordinates: [1.4,-0.0309017,2]

            - name: probeVertWRw29    # x: 1.45
              number_of_points: 101
              tip_coordinates: [1.45,0.484357,2]
              tail_coordinates: [1.45,-0.0156434,2]

            - name: probeVertWRw30    # x: 1.5
              number_of_points: 101
              tip_coordinates: [1.5,0.5,2]
              tail_coordinates: [1.5,-1.83697e-17,2]

            - name: probeVertWRw31    # x: 1.55
              number_of_points: 101
              tip_coordinates: [1.55,0.515643,2]
              tail_coordinates: [1.55,0.0156434,2]

            - name: probeVertWRw32    # x: 1.6
              number_of_points: 101
              tip_coordinates: [1.6,0.530902,2]
              tail_coordinates: [1.6,0.0309017,2]

            - name: probeVertWRw33    # x: 1.65
              number_of_points: 101
              tip_coordinates: [1.65,0.545399,2]
              tail_coordinates: [1.65,0.045399,2]

            - name: probeVertWRw34    # x: 1.7
              number_of_points: 101
              tip_coordinates: [1.7,0.558779,2]
              tail_coordinates: [1.7,0.0587785,2]

            - name: probeVertWRw35    # x: 1.75
              number_of_points: 101
              tip_coordinates: [1.75,0.570711,2]
              tail_coordinates: [1.75,0.0707107,2]

            - name: probeVertWRw36    # x: 1.8
              number_of_points: 101
              tip_coordinates: [1.8,0.580902,2]
              tail_coordinates: [1.8,0.0809017,2]

            - name: probeVertWRw37    # x: 1.85
              number_of_points: 101
              tip_coordinates: [1.85,0.589101,2]
              tail_coordinates: [1.85,0.0891007,2]

            - name: probeVertWRw38    # x: 1.9
              number_of_points: 101
              tip_coordinates: [1.9,0.595106,2]
              tail_coordinates: [1.9,0.0951057,2]

            - name: probeVertWRw39    # x: 1.95
              number_of_points: 101
              tip_coordinates: [1.95,0.598769,2]
              tail_coordinates: [1.95,0.0987688,2]

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
      output_data_base_name: output/vertNaluWRLES.e
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
