cmake_minimum_required (VERSION 3.16)

project (HtmlBuilderLibrary
  LANGUAGES C CXX
  VERSION 1.0.0.0
  DESCRIPTION "HTML Builder Library"
  HOMEPAGE_URL "<URL>"
)

add_library (${PROJECT_NAME} STATIC "")
add_library (Library::HtmlBuilder ALIAS ${PROJECT_NAME})

target_sources (${PROJECT_NAME}
  PUBLIC
    Includes/Attribute.hpp
    Includes/Document.hpp
    Includes/Element.hpp
    Includes/Html.hpp
    Sources/Document.cpp
    Sources/Element.cpp
)

target_include_directories (${PROJECT_NAME}
  PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/..>
    $<INSTALL_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/..>
)

target_compile_features (${PROJECT_NAME} PUBLIC cxx_std_20)

set_target_properties (${PROJECT_NAME}
    PROPERTIES
        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/OutPut/Bin
        LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/OutPut/Bin
        ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/OutPut/Bin
)
