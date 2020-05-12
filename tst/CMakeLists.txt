

set(aUnitTest test_ifc_local)

add_executable(${aUnitTest} test_ifc_local.cpp test_common.hpp)

target_include_directories(
	${aUnitTest}
	#	PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../inc # public interface includes
	PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/../src # project source (to be tested)
	PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}  # local test code includes
	)

target_link_libraries(
	${aUnitTest}
	LINK_PUBLIC exIfc
	)

# add test to CTest collection
add_test(
	${aUnitTest}  # cmake target
	${aUnitTest}  # command to run test
	)

