# https://gist.github.com/antiagainst/4614ca9ed29f5b8c0ba4

# function (test_function_my_install)
#   set (options OPTIONAL FAST)
#   set (one_value_args DESTINATION RENAME)
#   set (multi_value_args TARGETS CONFIGURATIONS)

#   cmake_parse_arguments (MY_INSTALL_PREFIX "${options}" "${one_value_args}" "${multi_value_args}" ${ARGN})

#   message (STATUS)
#   message (STATUS "MY_INSTALL_PREFIX_OPTIONAL:                ${MY_INSTALL_PREFIX_OPTIONAL}")
#   message (STATUS "MY_INSTALL_PREFIX_FAST:                    ${MY_INSTALL_PREFIX_FAST}")
#   message (STATUS "MY_INSTALL_PREFIX_DESTINATION:             ${MY_INSTALL_PREFIX_DESTINATION}")
#   message (STATUS "MY_INSTALL_PREFIX_RENAME:                  ${MY_INSTALL_PREFIX_RENAME}")
#   message (STATUS "MY_INSTALL_PREFIX_TARGETS:                 ${MY_INSTALL_PREFIX_TARGETS}")
#   message (STATUS "MY_INSTALL_PREFIX_CONFIGURATIONS:          ${MY_INSTALL_PREFIX_CONFIGURATIONS}")
#   message (STATUS "MY_INSTALL_PREFIX_UNPARSED_ARGUMENTS:      ${MY_INSTALL_PREFIX_UNPARSED_ARGUMENTS}")
#   message (STATUS "MY_INSTALL_PREFIX_KEYWORDS_MISSING_VALUES: ${MY_INSTALL_PREFIX_KEYWORDS_MISSING_VALUES}")
#   message (STATUS)

# endfunction (test_function_my_install)

# test_function_my_install(TARGETS foo bar DESTINATION bin OPTIONAL blub)

# add_custom_target (DIR_TARGET COMMAND dir)


# find_program (ninja_program Ninja)

# message (STATUS)
# message (STATUS "El programa Ninja: ${ninja_program}")
# message (STATUS)
