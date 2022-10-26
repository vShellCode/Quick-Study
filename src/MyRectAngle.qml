import QtQuick

Rectangle {
    id:borderRect
    property int myTopMargin: 0
    property int myBottomMargin: 0
    property real myReal: 0.0
    property string myString: "black"
    property color myColor: "black"
    property url myUrl: "qrc:/test.jpg"

    //必须初始化值
    required  property Component myComponent
    //property Component myComponent
    property var myVar: [5,5,5,5,5,5]
    property var myVar1: ["5",5,5,5,5,5]
    property list<Rectangle> myList
    //不允许更改
    //readonly property int rectWidth: width
    property int rectWidth: width

    //给成员对象id取一个新名字方便外部访问
    property alias newInnerRect: innerRect
    //给成员对象的属性 取一个新名字方便外部访问
    property alias newInnerRectcolor: innerRect.color
    width: 100
    height: 100
    color: "black"
    Rectangle{
        id:innerRect
        color: "blue"
        anchors.fill: parent
        anchors.topMargin: myTopMargin
        anchors.bottomMargin: myBottomMargin
        anchors.leftMargin: 0
        anchors.rightMargin: 0

        Loader {
            id: loader
            sourceComponent: myComponent
        }
    }
}
