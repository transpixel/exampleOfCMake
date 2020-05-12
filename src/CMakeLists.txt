

# Library (e.g. libexIcf.a) will be created and installed
set(modLibName exIfc)

# list of sources on which library depends
set(modLibSources

	ifc_public.cpp
	ifc_local.cpp
	ifc_other.cpp
	
	)

add_library(
	${modLibName}
	STATIC ${modLibSources}
	)

target_include_directories(
	${modLibName}
	PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../inc
	PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}
	)

install(
	TARGETS ${modLibName}
	ARCHIVE
	DESTINATION lib # disto packages will use this (e.g. </usr/local>/lib
	)
