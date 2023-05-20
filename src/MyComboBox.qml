import QtQuick
import QtQuick.Controls 2.15
import Qt5Compat.GraphicalEffects

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////  P16	QML-ComboBox自定义绘制                   //////////////////////////////////////////////////
///////////////////////////////vShellCode: 2023-05-17  ///////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

ComboBox {
    id: control
    model: ["First", "Second", "Third", "Second", "Third", "Second", "Third", "Second", "Third"]
    property  bool bIsPopupShowDown: true

    background: Rectangle {
        implicitWidth: 120
        implicitHeight: 40
        //color: "black"
        border.color: control.pressed ? "#17a81a" : "#21be2b"
        border.width: control.visualFocus ? 2 : 1
        radius: 2
    }


    delegate: ItemDelegate {    //针对model中每一个项的具体绘制
        width: control.width
        contentItem: Text {
            text: control.textRole
                ? (Array.isArray(control.model) ? modelData[control.textRole] : model[control.textRole])
                : modelData
            color: index % 2 ? "red" : "blue"
            font: control.font
            elide: Text.ElideRight
            verticalAlignment: Text.AlignVCenter
        }
        highlighted: control.highlightedIndex === index
    }


//    indicator : Image {   //这部分代码调用后不显示图片。可能是路径原因。
//        id: img
//        width: 60
//        height: 60
//        anchors.right: parent.right
//        anchors.verticalCenter: parent.verticalCenter
//        source: ":/xukun.jpeg"
//    }

//    indicator: Canvas {
//        id: canvas
//        x: control.width - width - control.rightPadding
//        y: control.topPadding + (control.availableHeight - height) / 2
//        width: 12
//        height: 8
//        contextType: "2d"

//        Connections {
//            target: control
//            function onPressedChanged() { canvas.requestPaint(); }
//        }

//        onPaint: {
//            context.reset();
//            context.moveTo(0, 0);
//            context.lineTo(width, 0);
//            context.lineTo(width / 2, height);
//            context.closePath();
//            context.fillStyle = control.pressed ? "#17a81a" : "#21be2b";
//            context.fill();
//        }
//    }

    contentItem: Text {
        leftPadding: 0
        rightPadding: control.indicator.width + control.spacing

        text: control.displayText
        font: control.font
        color: control.pressed ? "red" : "blue"
        verticalAlignment: Text.AlignVCenter //居中
        elide: Text.ElideRight              //右侧省略
    }



    popup: Popup { //和delegate的区别是 delegate绘制单个项的，popup绘制整个下拉控件
        y: true ? control.height + 10 : -control.height -80//控制下拉列表和combobox的间隙
        width: control.width
//        implicitHeight: contentItem.implicitHeight
        implicitHeight: 150   //下拉控件大小
        padding: 1

        contentItem: ListView {
            clip: true
            implicitHeight: contentHeight
            model: control.popup.visible ? control.delegateModel : null
            currentIndex: control.highlightedIndex
            interactive: true  //鼠标控制下拉效果是否打开
            boundsBehavior: Flickable.StopAtBounds//鼠标拖动是否可以超出边界

//            ScrollIndicator.vertical: ScrollIndicator { }
            ScrollBar.vertical: ScrollBar {
                policy: ScrollBar.AlwaysOn
            }
        }

        background: Rectangle {
            border.color: "grey"
            radius: 2
            layer.enabled: true
            layer.effect: DropShadow{
                horizontalOffset: 3
                         verticalOffset: 3
                         radius: 8.0
                         samples: 17
                         color: "#80000000"

            }
        }

    }
}


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////  P15	QML-ComboBox基础                         //////////////////////////////////////////////////
///////////////////////////////vShellCode: 2023-05-17  ///////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//ComboBox {
//    model: 10
//    editable: true  //是否可以手动添加项目
////    validator: IntValidator { //限制字符输入,普通匹配
////        top: 9
////        bottom: 0
////    }
//    validator: RegularExpressionValidator   //限制字符输入,正则表达式匹配
//    {
//        regularExpression: /[0-9A-F]+/
//    }
//    onAcceptableInputChanged: {             //当前有没有匹配validator验证器
//        console.log(acceptableInput)
//    }
//}



//ComboBox {
//         textRole: "text"
//         width: 400
//         valueRole: "name" //和currentValue属性绑定
//         displayText: currentText + "123"
//         model: [
//             { value: 100, text: qsTr("No modifier") ,name: "zhangsan"},
//             { value: 200, text: qsTr("Shift") ,name: "lisi"},
//             { value: 300, text: qsTr("Control") ,name: "wangwu"}
//         ]

//         onCurrentTextChanged: {
//             console.log("CurrentText: ", currentText);
//         }
//         onCurrentValueChanged: {
//             console.log("CurrentText: ", currentValue);
//         }

//     }


//ComboBox {
//    model: 3
//    onCurrentTextChanged: {
//        console.log("CurrentText: ", currentText);
//    }
//    onCurrentValueChanged: {
//        console.log("CurrentText: ", currentIndex);
//    }
//}


//    ComboBox {
//        id:combobox
//        editable: true  //控制是否可编辑属性
//        model: ["button", "checkbox", "popup"]
//        Component.onCompleted: {
//            console.log(count)
//        }
//    }


//ComboBox {
//    editable: true
//    model: ListModel {
//        id: model
//        ListElement { text: "Banana" }
//        ListElement { text: "Apple" }
//        ListElement { text: "Coconut" }
//    }
//    onAccepted: { //用于回车后添加项目
//        if (find(editText) === -1)
//            model.append({text: editText})
//    }
//}

