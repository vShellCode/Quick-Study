import QtQuick
import Qt5Compat.GraphicalEffects
import QtQuick.Layouts
import qc.window

FramelessWindow {
    id: window
    width: 640
    height: 480
    minimumWidth: 1200
    minimumHeight: 600
    color: "#2F000000"
    visible: true
    title: qsTr("Hello World")

    Column {
        anchors.fill: parent
        Rectangle  {
            id: titleBar
            width: parent.width
            height: 80
            color: "#FAF2F1"
            MouseArea {
                property var click_pos: Qt.point(0,0)
                anchors.fill: parent
                onPositionChanged: function (mouse) {
                    if(!pressed || window.mouse_pos !== FramelessWindow.NORMAL) return
                    if(!window.startSystemMove()) {
                        var offset = Qt.point(mouseX - click_pos.x,mouseY - click_pos.y)
                        window.x += offset.x
                        window.y += offset.y
                    }
                }
                onPressedChanged: function (mouse) {
                    click_pos = Qt.point((mouseX, mouseY))
                }
                onDoubleClicked: {
                    if(window.visibility === window.Maximized) {
                        window.showNormal()
                    }else {
                        window.showMaximized()
                    }
                }
                RowLayout {
                    width: parent.width - 20
                    height: parent.height - 10
                    anchors.centerIn: parent
                    Row {
                        width: 80
                        height: parent.height
                        spacing: 15
                        Image {
                            width: 40
                            height: width
                            anchors.verticalCenter: parent.verticalCenter
                            source: "qrc:/Images/music163.svg"
                            ColorOverlay {
                                anchors.fill: parent
                                source: parent
                                color: "#572920"
                            }
                        }
                        Text {
                            font.pointSize: 12
                            anchors.verticalCenter: parent.verticalCenter
                            text: "Music Player"
                            color: "#572920"
                        }
                        Component.onCompleted: {
                            // var w = 0
                            // for(var i = 0; i < children.length; i++) {
                            //     w += children[i].width
                            // }
                            // width = w
                            width = children[0].width + children[1].contentWidth + spacing
                        }
                    }
                    Item {Layout.preferredWidth: 10 ; Layout.fillWidth: true}
                    Row {
                        width: 30*3 + 5*3
                        spacing: 5
                        Rectangle {
                            id: minWindowBtn
                            property bool isHoverd: false
                            width: 30
                            height: width
                            radius: 100
                            color: if(isHoverd)  return "#1F572920"
                                   else return "#00000000"

                            Rectangle {
                                width: parent.width - 10
                                height: 3
                                anchors.centerIn: parent
                                color: "#572920"
                            }

                            MouseArea {
                                anchors.fill: parent
                                hoverEnabled: true
                                onClicked: {
                                    window.showMinimized()
                                }
                                onEntered: {
                                    parent.isHoverd = true
                                }
                                onExited: {
                                    parent.isHoverd = false
                                }
                            }
                        }
                        Rectangle {
                            id: minMaxWindowBtn
                            property bool isHoverd: false
                            width: 30
                            height: width
                            radius: 100
                            color: if(isHoverd)  return "#1F572920"
                                   else return "#00000000"

                            Rectangle {
                                width: parent.width - 10
                                height: width
                                anchors.centerIn: parent
                                radius: 100
                                color: "#00000000"
                                border.width: 2
                                border.color: "#572920"
                            }

                            MouseArea {
                                anchors.fill: parent
                                hoverEnabled: true
                                onClicked: {
                                    if (window.visibility === Window.Maximized){
                                        window.showNormal()
                                    }else {
                                        window.showMaximized()
                                    }
                                }
                                onEntered: {
                                    parent.isHoverd = true
                                }
                                onExited: {
                                    parent.isHoverd = false
                                }
                            }
                        }
                        Rectangle {
                            id: quitWindowBtn
                            property bool isHoverd: false
                            width: 30
                            height: width
                            radius: 100
                            color: if(isHoverd)  return "#1F572920"
                                   else return "#00000000"

                            Rectangle {
                                width: parent.width - 10
                                height: 3
                                border.color: "#572920"
                                anchors.centerIn: parent
                                rotation: 45
                                color: "#572920"
                            }
                            Rectangle {
                                width: parent.width - 10
                                height: 3
                                border.color: "#572920"
                                anchors.centerIn: parent
                                rotation: -45
                                color: "#572920"
                            }
                            MouseArea {
                                anchors.fill: parent
                                hoverEnabled: true
                                onClicked: {
                                    Qt.quit()
                                }
                                onEntered: {
                                    parent.isHoverd = true
                                }
                                onExited: {
                                    parent.isHoverd = false
                                }
                            }
                        }
                    }
                }
            }
        }

        Rectangle {
            id: content
            width: parent.width
            height: window.height - titleBar.height - bottomBar.height
            Row {
                width: parent.width
                height: parent.height
                Rectangle {
                    id: leftBar
                    width: 180
                    height: parent.height
                    color: "BLUE"
                }
                Rectangle {
                    id: rightContent
                    width: parent.width - leftBar.width
                    height: parent.height
                }
            }
        }

        Rectangle {
            id: bottomBar
            width: parent.width
            height: 80
            color: "RED"
        }
    }

}
