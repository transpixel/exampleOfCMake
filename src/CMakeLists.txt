

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
	PUBLIC
		$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/../inc>
		$<INSTALL_INTERFACE:/include>
	PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}
	)

# disto packages use the destinations relative (e.g. as </usr/local>/lib)
install(
	TARGETS ${modLibName}
	EXPORT exIfcTargets
	#	LIBRARY DESTINATION lib
	ARCHIVE DESTINATION lib
	#	RUNTIME DESTINATION bin 
	#	INCLUDES DESTINATION include
	)
