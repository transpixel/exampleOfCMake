
# list of headers that form package public interface
set(allPublicHeaders

	ifc_public.hpp
	
	)

install(
	FILES ${allPublicHeaders}
	DESTINATION include # disto packages uses (e.g. </usr/local>/include
	)

