cmake_minimum_required (VERSION 3.16)

project (CMakePractices
  LANGUAGES C CXX
  VERSION 1.0.0.0
  DESCRIPTION "Ejemplos de Proyectos CMake"
  HOMEPAGE_URL "<URL>"
)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/Modules")

# https://docs.microsoft.com/en-us/cpp/build/reference/compiler-command-line-syntax?view=msvc-170
# https://docs.microsoft.com/en-us/cpp/build/reference/compiler-options-listed-by-category?view=msvc-170
# https://docs.microsoft.com/en-us/cpp/build/reference/compiler-options-listed-by-category?view=msvc-170#output-files

# https://docs.microsoft.com/en-us/cpp/build/reference/permissive-standards-conformance?view=msvc-170
# https://docs.microsoft.com/en-us/cpp/build/reference/p-preprocess-to-a-file?view=msvc-170
# https://docs.microsoft.com/en-us/cpp/build/reference/fi-preprocess-output-file-name?view=msvc-170
# https://docs.microsoft.com/en-us/cpp/build/reference/ob-inline-function-expansion?view=msvc-170

# https://cmake.org/cmake/help/latest/command/add_compile_options.html
if (MSVC)
  # warning level 4 and all warnings as errors
  add_compile_options (/W4 /WX) # /P /c /permissive- /std:c++latest
else()
  # lots of warnings and all warnings as errors
  add_compile_options (-Wall -Wextra -pedantic -Werror -fstrict-enums -fconcepts -fcoroutines)
endif()

add_subdirectory (Libraries)

add_subdirectory (Core)

add_subdirectory (Tests)

include (Functions)
include (Expresions)