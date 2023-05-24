cmake_minimum_required(VERSION 3.16)

project(QML_Study VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(appQML_Study
    qml_study.qrc
    main.cpp MyRectAngle.qml MyPopup.qml MyListView.qml MyComboBox.qml MyComponent.qml MyRectAngleP20.qml
)

qt_add_qml_module(appQML_Study
    URI QML_Study
    VERSION 1.0
    QML_FILES main.qml MyRectAngle.qml MyPopup.qml MyListView.qml MyComboBox.qml MyComponent.qml MyRectAngleP20.qml
)


set_target_properties(appQML_Study PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appQML_Study
    PRIVATE Qt6::Quick)

install(TARGETS appQML_Study
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
