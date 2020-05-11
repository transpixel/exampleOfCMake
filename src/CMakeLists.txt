

set(modLibName exIfc)
set(modLibSources interface.cpp ifc_local.cpp bar.cpp)

message("{modLibName}: " ${modLibName})

add_library(
	${modLibName}
	STATIC ${modLibSources}
	)

# target specific overrides
#target_compile_features(
#	${modLibName}
#	PRIVATE cxx_std_11
#	)

target_include_directories(
	${modLibName}
	PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../inc
	PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}
	)


# message("PROJECT_NAME: " ${PROJECT_NAME})
# message("CMAKE_INSTALL_PREFIX: " ${CMAKE_INSTALL_PREFIX})
install(
	TARGETS ${modLibName}
	ARCHIVE
	DESTINATION lib
	)
