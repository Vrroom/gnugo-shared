PROJECT(Engine C)

GET_FILENAME_COMPONENT(ProjectRoot ../.. ABSOLUTE)
SET(OutputRoot ${ProjectRoot}/Build/Output)
SET(EXECUTABLE_OUTPUT_PATH ${OutputRoot}/bin)
SET(LIBRARY_OUTPUT_PATH ${OutputRoot}/lib)
SET(SourceRoot ${ProjectRoot}/Source)
SET(DataRoot ${ProjectRoot}/../Data)

INCLUDE_DIRECTORIES(${ProjectRoot}/Source/Include)
LINK_DIRECTORIES(${OutputRoot}/lib)

SET (BoardSrcs 
    ${SourceRoot}/Engine/board.c
    ${SourceRoot}/Engine/boardlib.c
    ${SourceRoot}/Engine/hash.c
    ${SourceRoot}/Engine/printutils.c
)


# Source file lists
FILE(GLOB EngineSources ${SourceRoot}/Engine/*.c)

########### mkpat program ###############

SET(mkpat_SRCS
    ${SourceRoot}/Patterns/mkpat.c
    ${SourceRoot}/Engine/transform.c
    ${SourceRoot}/Engine/dfa.c
    )

ADD_EXECUTABLE(mkpat ${mkpat_SRCS})

TARGET_LINK_LIBRARIES(mkpat Utils)

########### joseki program ###############

SET(joseki_SRCS
    ${SourceRoot}/Patterns/joseki.c
	${BoardSrcs}
    )

ADD_EXECUTABLE(joseki ${joseki_SRCS})

TARGET_LINK_LIBRARIES(joseki Sgf Utils)

########### mkeyes program ###############

SET(mkeyes_SRCS
    ${SourceRoot}/Patterns/mkeyes.c
    )

ADD_EXECUTABLE(mkeyes ${mkeyes_SRCS})

TARGET_LINK_LIBRARIES(mkeyes Utils)

########### mkmcpat program ###############

SET(mkmcpat_SRCS
    ${SourceRoot}/Patterns/mkmcpat.c
    ${SourceRoot}/Engine/montecarlo.c
    ${SourceRoot}/Engine/globals.c
	${BoardSrcs}
    )

ADD_EXECUTABLE(mkmcpat ${mkmcpat_SRCS})

IF(UNIX)
    SET(PLATFORM_LIBRARIES m)
ENDIF(UNIX)

TARGET_LINK_LIBRARIES(mkmcpat Sgf Utils ${PLATFORM_LIBRARIES})

########### uncompress_fuseki program ###############

SET(uncompress_fuseki_SRCS
    ${SourceRoot}/Patterns/uncompress_fuseki.c
	${BoardSrcs}
    )

ADD_EXECUTABLE(uncompress_fuseki ${uncompress_fuseki_SRCS})

TARGET_LINK_LIBRARIES(uncompress_fuseki Utils Sgf)


########### extract_fuseki program ###############

SET(extract_fuseki_SRCS
    ${SourceRoot}/Patterns/extract_fuseki.c
    ${SourceRoot}/Engine/transform.c
	${BoardSrcs}
    )

ADD_EXECUTABLE(extract_fuseki ${extract_fuseki_SRCS})

TARGET_LINK_LIBRARIES(extract_fuseki Sgf Utils)

########### next target ###############

SET(compress_fuseki_SRCS
    ${SourceRoot}/Patterns/compress_fuseki.c
    )

ADD_EXECUTABLE(compress_fuseki ${compress_fuseki_SRCS})

TARGET_LINK_LIBRARIES(compress_fuseki)


########### Generate files. ##############

SET(JOSEKI_EXE            ${EXECUTABLE_OUTPUT_PATH}/joseki)
SET(MKPAT_EXE             ${EXECUTABLE_OUTPUT_PATH}/mkpat)
SET(MKEYES_EXE            ${EXECUTABLE_OUTPUT_PATH}/mkeyes)
SET(MKMCPAT_EXE           ${EXECUTABLE_OUTPUT_PATH}/mkmcpat)
SET(UNCOMPRESS_FUSEKI_EXE ${EXECUTABLE_OUTPUT_PATH}/uncompress_fuseki)

SET(JOSEKI_INPUTS "")
SET(JOSEKI_NAMES "")
SET(GG_BUILT_SOURCES "")

MACRO(BUILD_JOSEKI NAME PREFIX)
	ADD_CUSTOM_TARGET(DUMMY${NAME} ALL
    	DEPENDS
    	${DataRoot}/${NAME}.db
    )
    ADD_CUSTOM_COMMAND(
        OUTPUT ${DataRoot}/${NAME}.db
        COMMAND ${JOSEKI_EXE} ${PREFIX}
	    ${DataRoot}/${NAME}.sgf
        > ${DataRoot}/${NAME}.db
        DEPENDS joseki ${DataRoot}/${NAME}.sgf
    )
    SET(JOSEKI_INPUTS ${JOSEKI_INPUTS}
        "-i" ${DataRoot}/${NAME}.db)
    SET(JOSEKI_NAMES ${JOSEKI_NAMES}
        ${DataRoot}/${NAME}.db)
ENDMACRO(BUILD_JOSEKI)

BUILD_JOSEKI(gogo JG)
BUILD_JOSEKI(hoshi_keima JHK)
BUILD_JOSEKI(hoshi_other JHO)
BUILD_JOSEKI(komoku JK)
BUILD_JOSEKI(sansan JS)
BUILD_JOSEKI(mokuhazushi JM)
BUILD_JOSEKI(takamoku JT)

MACRO(RUN_MKPAT OPTIONS1 OPTIONS2 PATNAME DBNAME CNAME)
	ADD_CUSTOM_TARGET(DUMMY${CNAME} ALL
    	DEPENDS
    	${CMAKE_CURRENT_BINARY_DIR}/${CNAME}
    )
    ADD_CUSTOM_COMMAND(
        OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/${CNAME}
        COMMAND ${MKPAT_EXE} ${OPTIONS1} ${OPTIONS2} ${PATNAME}
        -i ${DataRoot}/${DBNAME}
        -o ${CMAKE_CURRENT_BINARY_DIR}/${CNAME}
        DEPENDS mkpat ${DataRoot}/${DBNAME}
        )
    SET(GG_BUILT_SOURCES ${GG_BUILT_SOURCES} ${CMAKE_CURRENT_BINARY_DIR}/${CNAME})
ENDMACRO(RUN_MKPAT)

SET(DFAFLAGS -D -m)

MACRO(RUN_MKPAT_DFA OPTIONS PATNAME DTRNAME DBNAME CNAME)
	ADD_CUSTOM_TARGET(DUMMY${CNAME} ALL
    	DEPENDS
    	${CMAKE_CURRENT_BINARY_DIR}/${CNAME}
    )
    ADD_CUSTOM_COMMAND(
        OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/${CNAME}
        COMMAND ${MKPAT_EXE} ${DFAFLAGS} ${OPTIONS}
        -t ${DataRoot}/${DTRNAME} ${PATNAME}
        -i ${DataRoot}/${DBNAME}
        -o ${CMAKE_CURRENT_BINARY_DIR}/${CNAME}
        DEPENDS mkpat ${DataRoot}/${DBNAME}
        ${DataRoot}/${DTRNAME}
        )
    SET(GG_BUILT_SOURCES ${GG_BUILT_SOURCES} ${CMAKE_CURRENT_BINARY_DIR}/${CNAME})
ENDMACRO(RUN_MKPAT_DFA)

MACRO(RUN_UNCOMPRESS_FUSEKI BOARDSIZE)
	ADD_CUSTOM_TARGET(DUMMY${BOARDSIZE} ALL
    	DEPENDS
    	${CMAKE_CURRENT_BINARY_DIR}/fuseki${BOARDSIZE}.c
    )
    ADD_CUSTOM_COMMAND(
        OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/fuseki${BOARDSIZE}.c
        COMMAND ${UNCOMPRESS_FUSEKI_EXE} ${BOARDSIZE}
        ${DataRoot}/fuseki${BOARDSIZE}.dbz
        c > ${CMAKE_CURRENT_BINARY_DIR}/fuseki${BOARDSIZE}.c
        DEPENDS uncompress_fuseki
        ${DataRoot}/fuseki${BOARDSIZE}.dbz
        )
    SET(GG_BUILT_SOURCES ${GG_BUILT_SOURCES}
        ${CMAKE_CURRENT_BINARY_DIR}/fuseki${BOARDSIZE}.c)
ENDMACRO(RUN_UNCOMPRESS_FUSEKI)
  
RUN_MKPAT(-X "" attpat attack.db apatterns.c)
RUN_MKPAT("" "" defpat defense.db dpatterns.c)
RUN_MKPAT(-b "" handipat handicap.db handipat.c)
RUN_MKPAT(-c "" influencepat influence.db influence.c)
RUN_MKPAT(-c -b barrierspat barriers.db barriers.c)
RUN_MKPAT(-b "" endpat endgame.db endgame.c)
RUN_MKPAT(-c "" conn conn.db conn.c)
RUN_MKPAT(-b "" fusekipat fuseki.db fusekipat.c)
RUN_MKPAT_DFA(-b aa_attackpat aa_attackpats.dtr aa_attackpats.db aa_attackpat.c)
RUN_MKPAT_DFA(-b owl_vital_apat owl_vital_apats.dtr owl_vital_apats.db owl_vital_apat.c)
RUN_MKPAT_DFA(-b owl_attackpat owl_attackpats.dtr owl_attackpats.db owl_attackpat.c)
RUN_MKPAT_DFA(-b owl_defendpat owl_defendpats.dtr owl_defendpats.db owl_defendpat.c)
RUN_UNCOMPRESS_FUSEKI(9)
RUN_UNCOMPRESS_FUSEKI(13)
RUN_UNCOMPRESS_FUSEKI(19)

ADD_CUSTOM_TARGET(DUMMY${BOARDSIZE} ALL
    DEPENDS
    ${CMAKE_CURRENT_BINARY_DIR}/josekidb.c
	${CMAKE_CURRENT_BINARY_DIR}/patterns.c
	${CMAKE_CURRENT_BINARY_DIR}/eyes.c
	${CMAKE_CURRENT_BINARY_DIR}/mcpat.c
)

ADD_CUSTOM_COMMAND(
   	OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/josekidb.c
   COMMAND ${MKPAT_EXE} -C joseki ${JOSEKI_INPUTS}
   -o ${CMAKE_CURRENT_BINARY_DIR}/josekidb.c
   DEPENDS mkpat ${JOSEKI_NAMES}
   )

SET(GG_BUILT_SOURCES ${GG_BUILT_SOURCES}
    ${CMAKE_CURRENT_BINARY_DIR}/josekidb.c)

ADD_CUSTOM_COMMAND(
   	OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/patterns.c
   	COMMAND ${MKPAT_EXE} -b pat -i ${DataRoot}/patterns.db
    -i ${DataRoot}/patterns2.db
    -o ${CMAKE_CURRENT_BINARY_DIR}/patterns.c
   	DEPENDS mkpat ${DataRoot}/patterns.db
    ${DataRoot}/patterns2.db
   )
SET(GG_BUILT_SOURCES ${GG_BUILT_SOURCES}
    ${CMAKE_CURRENT_BINARY_DIR}/patterns.c)

ADD_CUSTOM_COMMAND(
   	OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/eyes.c
   COMMAND ${MKEYES_EXE} < ${DataRoot}/eyes.db
   > ${CMAKE_CURRENT_BINARY_DIR}/eyes.c
   DEPENDS mkeyes ${DataRoot}/eyes.db
   )
SET(GG_BUILT_SOURCES ${GG_BUILT_SOURCES} ${CMAKE_CURRENT_BINARY_DIR}/eyes.c)

ADD_CUSTOM_COMMAND(
   	OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/mcpat.c
   COMMAND ${MKMCPAT_EXE} ${DataRoot}/mc_montegnu_classic.db
                          ${DataRoot}/mc_mogo_classic.db
                          ${DataRoot}/mc_uniform.db
			  			  > ${CMAKE_CURRENT_BINARY_DIR}/mcpat.c
   						  DEPENDS mkmcpat ${SourceRoot}/Patterns/mkmcpat.c
                   ${DataRoot}/mc_montegnu_classic.db
                   ${DataRoot}/mc_mogo_classic.db
                   ${DataRoot}/mc_uniform.db
   )

SET(GG_BUILT_SOURCES ${GG_BUILT_SOURCES}
    ${CMAKE_CURRENT_BINARY_DIR}/mcpat.c)

# Build products
ADD_LIBRARY(Engine SHARED ${EngineSources} ${GG_BUILT_SOURCES})

# Additional libraries to be linked
TARGET_LINK_LIBRARIES(Engine Utils Sgf)
SET_TARGET_PROPERTIES(Engine PROPERTIES LINK_FLAGS "${Engine_DEPS_LDFLAGS}")

# Install rules
SET_TARGET_PROPERTIES(Engine PROPERTIES
                           INSTALL_RPATH_USE_LINK_PATH TRUE
                           INSTALL_NAME_DIR "${CMAKE_INSTALL_PREFIX}/lib")

INSTALL(TARGETS Engine DESTINATION lib)
