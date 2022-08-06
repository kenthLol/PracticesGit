cmake_minimum_required (VERSION 3.16)

# https://google.github.io/googletest/quickstart-cmake.html

# https://matgomes.com/integrate-google-test-into-cmake/
# https://www.testcookbook.com/book/cpp/setting-up-cmake-google-test.html
# https://github.com/testcookbook/google-test/blob/master/CMakeLists.txt
# https://raymii.org/s/tutorials/Cpp_project_setup_with_cmake_and_unit_tests.html
# https://www.slothparadise.com/google-testing-example-and-cmake-integration/

# https://crascit.com/2015/07/25/cmake-gtest/

include(FetchContent)

FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG release-1.12.1
)

# For Windows: Prevent overriding the parent project's compiler/linker settings
# Prevent GoogleTest from overriding our compiler/linker options when building with Visual Studio
set (gtest_force_shared_crt ON CACHE BOOL "" FORCE)

FetchContent_MakeAvailable(googletest)

add_library(GTest::GTest INTERFACE IMPORTED)
target_link_libraries(GTest::GTest INTERFACE gtest_main)

enable_testing()

add_subdirectory (Core)
add_subdirectory (Libraries)
