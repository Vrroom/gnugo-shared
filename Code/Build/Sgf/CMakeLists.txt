PROJECT(Sgf C)

GET_FILENAME_COMPONENT(ProjectRoot ../.. ABSOLUTE)
SET(OutputRoot ${ProjectRoot}/Build/Output)
SET(EXECUTABLE_OUTPUT_PATH ${OutputRoot}/bin)
SET(LIBRARY_OUTPUT_PATH ${OutputRoot}/lib)
SET(SourceRoot ${ProjectRoot}/Source)

INCLUDE_DIRECTORIES(${ProjectRoot}/Source/Include)
LINK_DIRECTORIES(${OutputRoot}/lib)

# Source file lists
FILE(GLOB SgfSources ${SourceRoot}/Sgf/*.c)

# Build products
ADD_LIBRARY(Sgf SHARED ${SgfSources})

# Additional libraries to be linked
TARGET_LINK_LIBRARIES(Sgf Utils)
SET_TARGET_PROPERTIES(Sgf PROPERTIES LINK_FLAGS "${Sgf_DEPS_LDFLAGS}")

# Install rules
SET_TARGET_PROPERTIES(Sgf PROPERTIES
                           INSTALL_RPATH_USE_LINK_PATH TRUE
                           INSTALL_NAME_DIR "${CMAKE_INSTALL_PREFIX}/lib")

INSTALL(TARGETS Sgf DESTINATION lib)
