message (STATUS)
message (STATUS "CMAKE_SOURCE_DIR:                       ${CMAKE_SOURCE_DIR}")
message (STATUS "CMAKE_BINARY_DIR:                       ${CMAKE_BINARY_DIR}")
message (STATUS "CMAKE_PARENT_LIST_FILE:                 ${CMAKE_PARENT_LIST_FILE}")
message (STATUS "CMAKE_HOME_DIRECTORY:                   ${CMAKE_HOME_DIRECTORY}")
message (STATUS "CMAKE_CURRENT_LIST_FILE:                ${CMAKE_CURRENT_LIST_FILE}")
message (STATUS "CMAKE_CURRENT_LIST_DIR:                 ${CMAKE_CURRENT_LIST_DIR}")
message (STATUS "CMAKE_INCLUDE_CURRENT_DIR:              ${CMAKE_INCLUDE_CURRENT_DIR}")
message (STATUS "CMAKE_INCLUDE_CURRENT_DIR_IN_INTERFACE: ${CMAKE_INCLUDE_CURRENT_DIR_IN_INTERFACE}")
message (STATUS)

# add_custom_target(DebugGenerateExpresion
#   COMMAND ${CMAKE_COMMAND}
#     -E echo "HtmlBuilder Targe: $<TARGET_FILE:Library::HtmlBuilder>"
# )

# file (GENERATE OUTPUT DebugGenerateExpresion.txt CONTENT "$<TARGET_FILE:Library::HtmlBuilder>")
file (GENERATE OUTPUT DebugGenerateExpresion.txt INPUT ${CMAKE_CURRENT_LIST_DIR}/InputFiles/GeneratorInputFile.cmake)
