

set(unitTest test_ifc_public)

add_executable(${unitTest} test_ifc_public.cpp test_common.hpp)


# target specific overrides
#target_compile_features(
#	${unitTest}
#	PRIVATE cxx_std_11
#	)

target_include_directories(
	${unitTest}
	PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../inc
	PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}
	)

target_link_libraries(
	${unitTest}
	LINK_PUBLIC exIfc
	)

install(
	TARGETS ${unitTest}
	DESTINATION bin/unittests
	)
