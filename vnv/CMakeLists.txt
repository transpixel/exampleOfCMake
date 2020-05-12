
set(aValTest test_ifc_public)

# here also uses support code from ../tst
add_executable(${aValTest} test_ifc_public.cpp)

target_include_directories(
	${aValTest}
	PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../inc
	PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/../tst
	)

target_link_libraries(
	${aValTest}
	LINK_PUBLIC exIfc
	)

# install verification tests as part of project
install(
	TARGETS ${aValTest}
	DESTINATION bin/validation
	)

# add test to CTest collection
add_test(
	${aValTest}  # cmake target
	${aValTest}  # command to run test
	)
