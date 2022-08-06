Line 1: $<1:ONE>
Line 2: $<$<BOOL:true>:TWO>

Line 4: $<TARGET_FILE:Library::HtmlBuilder>

Line 6: $<CONFIG>
Line 7: $<$<CONFIG:Debug>:--C++/Latest>

Line 9:  $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
Line 10: $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>

ALIAS_GLOBAL:             $<TARGET_PROPERTY:Library::HtmlBuilder,ALIAS_GLOBAL>
ALIASED_TARGET:           $<TARGET_PROPERTY:Library::HtmlBuilder,ALIASED_TARGET>
SOURCES:                  $<TARGET_PROPERTY:Library::HtmlBuilder,SOURCES>
SOURCE_DIR:               $<TARGET_PROPERTY:Library::HtmlBuilder,SOURCE_DIR>
BINARY_DIR:               $<TARGET_PROPERTY:Library::HtmlBuilder,BINARY_DIR>
INCLUDE_DIRECTORIES:      $<TARGET_PROPERTY:Library::HtmlBuilder,INCLUDE_DIRECTORIES>
LIBRARY_OUTPUT_DIRECTORY: $<TARGET_PROPERTY:Library::HtmlBuilder,LIBRARY_OUTPUT_DIRECTORY>
LINK_INTERFACE_LIBRARIES: $<TARGET_PROPERTY:Library::HtmlBuilder,LINK_INTERFACE_LIBRARIES>
NAME:                     $<TARGET_PROPERTY:Library::HtmlBuilder,NAME>
VERSION:                  $<TARGET_PROPERTY:Library::HtmlBuilder,VERSION>
