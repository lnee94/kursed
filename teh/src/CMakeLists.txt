qt5_add_resources(teh_SRCS resources.qrc)
add_executable(teh main.cpp ${teh_SRCS})
target_link_libraries(teh Qt5::Qml Qt5::Gui)

