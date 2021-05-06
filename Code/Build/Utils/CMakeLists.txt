PROJECT(Utils C)

GET_FILENAME_COMPONENT(ProjectRoot ../.. ABSOLUTE)
SET(OutputRoot ${ProjectRoot}/Build/Output)
SET(EXECUTABLE_OUTPUT_PATH ${OutputRoot}/bin)
SET(LIBRARY_OUTPUT_PATH ${OutputRoot}/lib)
SET(SourceRoot ${ProjectRoot}/Source)

FIND_PACKAGE(Curses REQUIRED)

INCLUDE_DIRECTORIES(${ProjectRoot}/Source/Include ${CURSES_INCLUDE_DIR})

# Source file lists
FILE(GLOB UtilsSources ${SourceRoot}/Utils/*.c)

# Build products
ADD_LIBRARY(Utils SHARED ${UtilsSources})

# Additional libraries to be linked
TARGET_LINK_LIBRARIES(Utils ${CURSES_LIBRARIES})
SET_TARGET_PROPERTIES(Utils PROPERTIES LINK_FLAGS "${Utils_DEPS_LDFLAGS}")

# Install rules
SET_TARGET_PROPERTIES(Utils PROPERTIES
                           INSTALL_RPATH_USE_LINK_PATH TRUE
                           INSTALL_NAME_DIR "${CMAKE_INSTALL_PREFIX}/lib")

INSTALL(TARGETS Utils DESTINATION lib)
