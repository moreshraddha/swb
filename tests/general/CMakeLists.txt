
# Need input files over in build environment
file(GLOB infiles
     RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}
     *.ssf *.inp *.R *.dat *.csv *.txt)

foreach(infilename ${infiles})
    set(infile  ${CMAKE_CURRENT_SOURCE_DIR}/${infilename})
    set(outfile ${CMAKE_CURRENT_BINARY_DIR}/${infilename})
    configure_file(${infile} ${outfile} COPYONLY)
endforeach()

set(R_script_tests
    GENERAL_COMPARISON_Thornthwaite-Mather_calcs.r
   )

if(DEFINED R_SCRIPT)

  foreach(test_filename ${R_script_tests})
     get_filename_component(basename ${test_filename} NAME_WE)

   message(" ")
   message("  CREATING TEST - Test string: " ${basename})
   message("   COMMAND " ${R_SCRIPT} " --vanilla "
              ${CMAKE_CURRENT_SOURCE_DIR}/${test_filename} " " ${SWB_EXECUTABLE} )
   message(" ")

     add_test(NAME ${basename}
              COMMAND ${R_SCRIPT} --vanilla
              ${CMAKE_CURRENT_SOURCE_DIR}/${test_filename} ${SWB_EXECUTABLE} )

     # set criteria for success of each test
     set_tests_properties(${basename}
                       PROPERTIES PASS_REGULAR_EXPRESSION "PASS")

     # set criteria for failure of each test
     set_tests_properties(${basename}
                       PROPERTIES FAIL_REGULAR_EXPRESSION "FAIL")

  endforeach()

endif()
