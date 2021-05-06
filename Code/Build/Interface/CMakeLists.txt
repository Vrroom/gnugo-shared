PROJECT(Interface C)

GET_FILENAME_COMPONENT(ProjectRoot ../.. ABSOLUTE)
SET(OutputRoot ${ProjectRoot}/Build/Output)
SET(EXECUTABLE_OUTPUT_PATH ${OutputRoot}/bin)
SET(LIBRARY_OUTPUT_PATH ${OutputRoot}/lib)
SET(SourceRoot ${ProjectRoot}/Source)
SET(DataRoot ${ProjectRoot}/../Data)

INCLUDE_DIRECTORIES(${ProjectRoot}/Source/Include)
LINK_DIRECTORIES(${OutputRoot}/lib)

########### gnugo executable ###############

FILE(GLOB InterfaceSources ${SourceRoot}/Engine/*.c)

ADD_EXECUTABLE(gnugo ${InterfaceSources})

IF(WIN32)
    SET(PLATFORM_LIBRARIES wsock32)
ENDIF(WIN32)

IF(UNIX)
    SET(PLATFORM_LIBRARIES m)
ENDIF(UNIX)

TARGET_LINK_LIBRARIES(gnugo Sgf Engine Utils ${PLATFORM_LIBRARIES})

INSTALL(TARGETS gnugo DESTINATION bin)
