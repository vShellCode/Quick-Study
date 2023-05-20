import QtQuick 2.0
import QtQuick.Controls 2.5

Rectangle{
    anchors.centerIn: parent
    width: 400
    height: 200
    border.color: "black"
    Component {
             id: sectionHeading
             Rectangle {
                 width: 400
                 height: childrenRect.height
                 color: "lightsteelblue"

                 required property string section

                 Text {
                     text: parent.section
                     font.bold: true
                     font.pixelSize: 20
                 }
             }
         }
ListView {
    id: list
    //    header: Rectangle{//ListView 上方显示内容
    //        width: 400
    //        height: 20
    //        color: "blue"
    //    }
    //    footer: Rectangle{  //ListView 下方显示内容
    //        width: 400
    //        height: 20
    //        color: "green"
    //    }
    width: 280; height: 200

    model:  ListModel {
        ListElement {
            name: "Bill Smith"
            number: "555 3264"
            myValue: 111
            size: "small"

        }
        ListElement {
            name: "John Brown"
            number: "555 8426"
             myValue: 222
             size: "medium"
        }
        ListElement {
            name: "Sam Wise"
            number: "555 0473"
             myValue: 333
             size: "large"
        }
    }
   //数字 控制了所有的数据
    spacing: 20

   // flickableDirection: Flickable.AutoFlickDirection //拖动特效
    flickableDirection: Flickable.HorizontalFlick //拖动特效
    highlight: Rectangle {
        color: "yellow";
        radius: 5
    }

    delegate: Row { //控制model的每一个数据如何绘制
            Text { text: '<b>Name:</b> ' + name; width: 160 }
            Text { text: '<b>Number:</b> ' + number; width: 160 }
        }

    section.property: "size"
    //section.criteria: ViewSection.FullString //显示完整字符
    section.criteria: ViewSection.FirstCharacter //显示首个字符
    section.delegate: sectionHeading    //控制section.property如何绘制
    //    //[] list
    //    delegate: Rectangle {    //控制每一项数据如何绘制
    //        color: "transparent"
    //        width: list.width
    //        height: 50
    //        Text{
    //            id : txt
    //            text : name + "  " + number + "  " + myValue
    //        }
    //        MouseArea {
    //        anchors.fill: parent
    //        onClicked: {
    //            console.log(currentIndex  = index)
    //        }
    //     }
    //  }
    }
}
