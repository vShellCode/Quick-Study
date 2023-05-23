import QtQuick
import QtQuick.Controls




Rectangle{
    width: 400
    height: 300
    property Component com1
    property Component com2
    border.color: "black"

    Loader {
        id: loader1
        width: 80
        height: 50
        sourceComponent: com1
        anchors.bottom: parent.bottom
        anchors.margins: 20
        anchors.right: parent.right
        anchors.rightMargin: 20

        Connections {
            target: loader1.item
//            function onBtnSig(value) {
//                console.log("Right" + value)
//            }
            function onLeftBtnPressed() {
                loader2.item.focus = true;
                loader2.item.forceActiveFocus()
            }
        }
        Component.onCompleted: {
            loader1.item.focus = true
            loader1.item.forceActiveFocus()
        }
    }


    Loader {
        id: loader2
        width: 80
        height: 50
        sourceComponent: com2
        anchors.bottom: parent.bottom
        anchors.margins: 20
        anchors.right: parent.right
        anchors.rightMargin: 120
        Connections {
            target: loader2.item
            ignoreUnknownSignals: true //忽略信号不报错提示
            function onBtnSig(value) {
                console.log("Left:" + value)
            }
        }
    }
}
