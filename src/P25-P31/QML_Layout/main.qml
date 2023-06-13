import QtQuick
import QtQuick.Controls 2.5
import Qt5Compat.GraphicalEffects
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////  P27	QML-如何访问复杂组件的子项                  //////////////////////////////////////////////////
    ///////////////////////////////vShellCode: 2023-06-01  ///////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



    //////////////////////知识点3

    ListView {
        id: list
        width: 100
        height: 300
        model: ["zhangsan","lisi","wangwu"]//全部数据
        delegate: Column {
            Text {
                id: txt
                text: modelData + "text"
            }
            Button {
                text: modelData + "btn"
            }
        }

//        delegate: Text {//绘制
//            id: txt
//            text: modelData
//        }
    }


        Button {
            id: btn2
            x: 200
            text: "clicked!"
            onClicked: {
//                console.log(list.contentItem.children.length)
                for(var i = 0;i < list.contentItem.children.length; i++)
                {
                    var col = list.contentItem.children[i]
                    for(var j = 0; j < col.children.length; j++)
                    {
                        console.log(col.children[j])
                    }

                    console.log(col.contentItem.children[i])
//                    console.log(list.contentItem.children[i])
//                    if(list.contentItem.children[i] instanceof Text)
//                    {
//                        console.log(list.contentItem.children[i].text)
//                    }
                }

            }
        }








//////////////////////知识点2
//    Button {
//        id: btn2
//        x: 200
//        text: "clicked!"
//        onClicked: {
//            //console.log(btn.text,txt.text,rect.height)
//            for(var i =0; i< col.children.length;i++)
//            {
//                console.log(col.children[i])
//                if(col.children[i] instanceof Button)
//                    console.log(col.children[i].text)
//            }

//        }
//    }

//    Column {
//        id: col
//        spacing: 20
//            Repeater {
//                id: rep
//                model: 3
//                Button {
//                    id: btn

//                    text: "btn" + index
//                }
//            }
//            Text {
//                id: txt
//                text: qsTr("text")
//            }
//            Rectangle {
//                id: rect
//                width: 100
//                height: 50
//                color: "black"
//            }

//   }






//////////////////////知识点1
//    Repeater {
//        id: rep
//        model: 3
//        Button {
//            id: btn
//            y: index * 60
//            text: "btn" + index
//        }
//    }

//    Button {
//        id: btn2
//        x: 200
//        text: "clicked!"
//        onClicked: {
//            for(var i = 0; i< rep.count; i++)
//            {
//                console.log(rep.itemAt(i).text)
//            }


//        }
//    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////  P26	QML-自定义Grid控件与OpacityMask的使用      //////////////////////////////////////////////////
    ///////////////////////////////vShellCode: 2023-05-31  ///////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



//    Grid {
//        id: grid
//        width: 15
//        height: 200
//        columns: 3
//        x: 300
//        y: 100
//        Repeater{
//            //model: grid.width / 5 * grid.height / 5
//            model: grid.width / 5 * 200 / 5
//            Rectangle {
//                width: 5
//                height: 5
//                radius: 10
//                color: index % 2 ? "black" : "white"
//                Component.onCompleted: {
//                    console.log("rect" + index)
//                }
//            }
//        }
//    }

//    Button {
//        width: 50
//        height: 50
//        x: 100
//        y: 100
//        onClicked: {
//            grid.height -= 10
//        }

//    }

//    Rectangle {
//        x: 200
//        y: 100
//        id: maskRect
//        width: grid.width
//        height: grid.height
//        visible: false
//        radius: 10
//        border.color: "red"
//    }

//    Rectangle {
//        width: grid.width + 4
//        height: grid.height + 4
//        anchors.horizontalCenter: parent.horizontalCenter
//        anchors.bottom: parent.bottom
//        border.color: "black"
//        radius: 10
//        z: 1
//        border.width: 3
//        OpacityMask {
//            source: grid
//            z: 0
//            maskSource: maskRect
////            anchors.fill: maskRect
//            width: maskRect.width
//            height: maskRect.height
//            anchors.fill: parent
//            anchors.margins: 2
//        }
//    }


    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////  P25	QML各类布局                              //////////////////////////////////////////////////
    ///////////////////////////////vShellCode: 2023-05-31  ///////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//    Grid {
//        rows: 3
////        columns: 3
//        spacing: 2
//        Rectangle { color: "red"; width: 50; height: 50 }
//        Rectangle { color: "green"; width: 20; height: 50 }
//        Rectangle { color: "blue"; width: 50; height: 20 }
//        Rectangle { color: "cyan"; width: 50; height: 50 }
//        Rectangle { color: "magenta"; width: 10; height: 10 }
//    }

//Rectangle{
//    width: 400
//    height: 300
//    border.color: "black"
//    Flow {
//        anchors.fill: parent
//        anchors.margins: 4
//        spacing: 10
//        flow: Flow.TopToBottom //文字绘制方向
//        Text { text: "Text"; font.pixelSize: 40 }
//        Text { text: "items"; font.pixelSize: 40 }
//        Text { text: "flowing"; font.pixelSize: 40 }
//        Text { text: "inside"; font.pixelSize: 40 }
//        Text { text: "a"; font.pixelSize: 40 }
//        Text { text: "Flow"; font.pixelSize: 40 }
//        Text { text: "item"; font.pixelSize: 40 }
//    }

//}
















//    Rectangle{
//        width: 400
//        height: 300
//        border.color: "black"
//                Row  {
//                    id: col
//                    spacing: 30 //控件之间的间隔
//                    leftPadding: 50 //内边距
//                    topPadding: 50  //内边距
//                    layoutDirection: Qt.RightToLeft //控件绘制顺序，从右往左


//                    Component.onCompleted: {
//                        console.log(effectiveLayoutDirection)//effectiveLayoutDirection获取当前控件绘制顺序
//                    }

//                    Repeater {
//                        id: rep
//                        model: 3
//                        Button {
//                            width: 50
//                            height: 30
//                            text: "btn" + index
//                        }
//                    }


//                }

//    }






//Rectangle{
//    width: 400
//    height: 300
//    border.color: "black"
//            Column  {
//                id: col
//                spacing: 30 //控件之间的间隔
//                leftPadding: 50 //内边距
//                topPadding: 50  //内边距
//                Repeater {
//                    id: rep
//                    model: 3
//                    Button {
//                        width: 100
//                        height: 50
//                        text: "btn" + index
//                    }
//                }
//                move: Transition {//添加或移动时会产生动画效果
//                    NumberAnimation { properties: "x,y"; easing.type: Easing.OutBounce }
//                }

//                add: Transition {//添加或移动时会产生动画效果
//                    NumberAnimation { properties: "x,y"; easing.type: Easing.OutBounce }
//                }
//                populate: Transition {
//                    NumberAnimation { properties: "x,y"; from: 200; duration: 100; easing.type: Easing.OutBounce }
//                }

//            }

//}



//        Column  {
//            id: col
//            spacing: 30 //控件之间的间隔
//            Repeater {
//                id: rep
//                model: ListModel{
////                    ListElement{

////                    }
//                }

//                Button {
//                    width: 100
//                    height: 50
//                    text: "btn" + index
//                }
//            }
//            move: Transition {//添加或移动时会产生动画效果
//                NumberAnimation { properties: "x,y"; easing.type: Easing.OutBounce }
//            }

//            add: Transition {//添加或移动时会产生动画效果
//                NumberAnimation { properties: "x,y"; easing.type: Easing.OutBounce }
//            }
//            populate: Transition {
//                NumberAnimation { properties: "x,y"; from: 200; duration: 100; easing.type: Easing.OutBounce }
//            }

//        }
//    Button {
//        width: 50
//        anchors.bottom: parent.bottom
//        anchors.left: parent.left
//        anchors.margins: 20
//        onClicked: {
//            rep.model.insert(0,{"name": rep.model.count})
//        }
//    }


//    Column  {
//        id: col
//        spacing: 30 //控件之间的间隔
//        Button {
//            width: 100
//            height: 50
//        }
//        Button {
//            width: 100
//            height: 50
//        }
//        Button {
//            width: 100
//            height: 50
//        }
//    }






}
