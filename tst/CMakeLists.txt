

set(unitTest uinterface)

add_executable(${unitTest} uinterface.cpp)

target_compile_features(
	${unitTest}
	PRIVATE cxx_std_11
	)
target_include_directories(
	${unitTest}
	PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../inc
	PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}
	)

target_link_libraries(
	${unitTest}
	LINK_PUBLIC exIfc
	)

