cmake_minimum_required (VERSION 3.20)

project (CppPracticesProject
    LANGUAGES C CXX
    VERSION 1.0.0.0
    HOMEPAGE_URL "<Alguna URL>"
    DESCRIPTION "Prácticando Clases en C++"
)

add_executable (${PROJECT_NAME}
    Includes/Main.hpp
    Sources/Main.cpp
)

# target_link_libraries(${PROJECT_NAME}
#     PUBLIC
#         Library::HtmlBuilder
# )

target_compile_features (${PROJECT_NAME}
    PUBLIC
        cxx_std_23
)

target_include_directories(${PROJECT_NAME}
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}
)

set_target_properties(${PROJECT_NAME}
    PROPERTIES
        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/OutPut/Bin # .exe, .out
        LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/OutPut/Bin # .dll, .so
        ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/OutPut/Bin # .lib, .a
)