message("--------------------------------------------------------------------")
message("   Summary of CMAKE environment variables")
message("--------------------------------------------------------------------")
message("BUILD TYPE:  " ${CMAKE_BUILD_TYPE})
message("SYSTEM_TYPE: " ${SYSTEM_TYPE})
message(" ")
message("CMAKE_HOST_WIN32: " ${CMAKE_HOST_WIN32})
message("CMAKE_HOST_APPLE: " ${CMAKE_HOST_APPLE})
message("CMAKE_Fortran_COMPILER full path: " ${CMAKE_Fortran_COMPILER})
message("Fortran compiler: " ${Fortran_COMPILER_NAME})
message("CMAKE Fortran flags (Debug):   " ${CMAKE_Fortran_FLAGS_DEBUG})
message("CMAKE Fortran flags (Profile): " ${CMAKE_Fortran_FLAGS_PROFILE})
message("CMAKE Fortran flags (Release): " ${CMAKE_Fortran_FLAGS_RELEASE})
message("CMAKE compiler definitions:    " ${PREPROCESSOR_DEFINES} )
message( " ")
message("Git Commit Hash: " ${GIT_COMMIT_HASH} )
message( " ")
MESSAGE("Install to directory: " ${CMAKE_INSTALL_PREFIX})
message(" ")
message("INCLUDE directories (DISLIN module directory): ")
message(" ==> ${INCLUDE_DIRECTORIES}")
message("Library locations for external libraries:")
message(" ==> ${LIB_PATH}")

message(" ")
message("MAIN LIBRARIES:")
message("  GFORTRAN  ${LIB_GFORTRAN}")
message("  GCC       ${LIB_GCC}")
message(" ")
message("NETCDF-RELATED LIBRARIES:")
message("  NETCDF    ${LIB_NETCDF}")
message("  HDF5_HL   ${LIB_HDF5_HL}")
message("  HDF5      ${LIB_HDF5}")
message("  LIBZ      ${LIB_Z}")
message("  LIBSZ     ${LIB_SZ}")
message(" ")
message("DISLIN-RELATED LIBRARIES")
message("  DISLIN          ${LIB_DISLIN}")
message("  OPENGL          ${LIB_OPENGL32}")
message("  GDI32           ${LIB_GDI32}")
message(" ")
message("SUMMARY OF ALL EXTERNAL LIBRARIES:")
message("${EXTERNAL_LIBS}")

message(" ")
message("CMAKE_BINARY_DIR: " ${CMAKE_BINARY_DIR})
message("CMAKE_CURRENT_SOURCE_DIR: " ${CMAKE_CURRENT_SOURCE_DIR})
message("PROJECT_SOURCE_DIR: " ${PROJECT_SOURCE_DIR})
message( " ")
message("--------------------------------------------------------------------")
