import QtQuick
import QtQuick.Controls


Popup {
    id:popup
    x: 100
    y: 100
    width: 200
    height: 300
    visible: true
    //closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
    closePolicy: Popup.NoAutoClose
    modal: true             //是否模态对话框
   // dim: true               //非模态对话框的-除Popup以外的背景颜色
    enter: Transition { //打开的时候透明度会从0到1.0
              NumberAnimation { property: "opacity"; from: 0.0; to: 1.0; duration: 1000}
          }
    exit: Transition {
           NumberAnimation { property: "opacity"; from: 1.0; to: 0.0; duration: 1000}
       }
    contentItem: Rectangle{
        anchors.fill: parent
        color: "grey"
        Text {
            id: txt
            anchors.fill: parent
            text: qsTr("Message Box Area!!!!")
            font.pixelSize: 30
            wrapMode: Text.WordWrap //自动换行
        }
        Button {
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 30
            anchors.right: parent.right
            anchors.rightMargin: 30
            text: "cancel"

        }
        Button {
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 30
            anchors.right: parent.right
            anchors.rightMargin: 130
            text: "ok"

        }
    }
    Overlay.modal: Rectangle{
        anchors.fill: parent
//        color: "lightsteelblue"   //英语设置颜色
//        color: "#ff0000"          //RGB设置颜色
          color: "#33ff0000"        //RGBA设置颜色 设置顺序:ARGB
        Popup{
          width: parent.width
//          height: parent.height
          height: 80
          visible: true
          closePolicy: Popup.NoAutoClose
          background: Rectangle{
              color: "transparent" //透明色
//              color: "grey"
          }

          Button{
              width: 50
              height: 50
              anchors.right: parent.right
              onClicked: {
                    console.log("clicked")
              }

          }
        }
    }
//    Overlay.modeless: Rectangle{
//        anchors.fill: parent
//        color: "blue"

//    }
}
