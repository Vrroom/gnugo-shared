#===============================================================================================================================
#
# Build script for the GNU Go library.
#
#===============================================================================================================================

PROJECT(GNUGo C)

# Set the minimum required CMake version
CMAKE_MINIMUM_REQUIRED(VERSION 3.0)

# See cmake --help-policy CMP0003 for details on this one
IF(POLICY CMP0003)
  CMAKE_POLICY(SET CMP0003 NEW)
ENDIF(POLICY CMP0003)

# Avoid having to repeat condition after ELSE and ENDIF statements
SET(CMAKE_ALLOW_LOOSE_LOOP_CONSTRUCTS TRUE)

# Postfix for debug builds
SET(CMAKE_DEBUG_POSTFIX "d")

# Set the default build type
IF(NOT CMAKE_BUILD_TYPE)
  SET(CMAKE_BUILD_TYPE "RelWithDebInfo")
ENDIF()

# https://stackoverflow.com/a/42697475
MACRO(install_symlink filepath sympath)
  INSTALL(CODE "EXECUTE_PROCESS(COMMAND ${CMAKE_COMMAND} -E create_symlink ${filepath} ${sympath})")
  INSTALL(CODE "MESSAGE(STATUS \"Created symlink: ${sympath} -> ${filepath}\")")
ENDMACRO(install_symlink)

ADD_COMPILE_DEFINITIONS(VERSION="3.8")
# Subdirectories containing individual build targets
ADD_SUBDIRECTORY(Utils)
ADD_SUBDIRECTORY(Sgf)
ADD_SUBDIRECTORY(Engine)
ADD_SUBDIRECTORY(Interface)
 
