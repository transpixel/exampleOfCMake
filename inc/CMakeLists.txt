

# list of headers that form package public interface
set(allPublicHeaders

	ifc_public.hpp
	
	)

#	#foreach(aPublicHeader ${aPublicHeaders})
#		set(aPublicHeader ifc_public.hpp)
#		target_include_directories(
#			${aPublicHeader}
#			PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../inc
#			)
#	#foreach(aPublicHeader)

install(
	FILES ${allPublicHeaders}
	DESTINATION include # disto packages uses (e.g. </usr/local>/include
	)

