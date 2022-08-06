cmake_minimum_required (VERSION 3.16)

project (LibrariesProjects
  LANGUAGES C CXX
  VERSION 1.0.0.0
  DESCRIPTION "Librerías del Proyecto"
  HOMEPAGE_URL "<URL>"
)

add_subdirectory (ExtensionMethods)

add_subdirectory (HtmlBuilder)

add_subdirectory (StringConvert)
