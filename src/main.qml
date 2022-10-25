import QtQuick
import QtQuick.Controls 2.5
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    color: "grey"
    minimumHeight: 400
    minimumWidth: 400
    maximumHeight: 600
    maximumWidth: 600



    Component {
        id:com
        Rectangle{
            id: rect
            width: 200
            height: 100
            color: "black"
            Component.onCompleted: {
                console.log("onComponend", width, height, color)
            }
            //Component.onDestruction 控件销毁时会调用这个函数
            Component.onDestruction: {
                console.log("onDestruchtion")
            }
        }
    }
    Loader {
        id: loader
        //动态加载组件
        source: "./MyRectAngle.qml"
//        sourceComponent: com
        onStatusChanged: {
        console.log("status: ", status)
        }
    }
    Button {
        width: 50
        height: 50
        x: 200
        onClicked: {
//            loader.item.width = 50
//            loader.item.height = 50
//            loader.item.color = "red"
//            loader.sourceComponent = null
        }
    }



    //    /////////////////////////////////////////////////////////////////
    //    //Component.onCompleted 控件生成时会调用这个函数，可以用于初始化
    //    Component.onCompleted: {
    //        console.log("onComponend", width, height, color)
    //    }
    //    //Component.onDestruction 控件销毁时会调用这个函数
    //    Component.onDestruction: {
    //        console.log("onDestruchtion")
    //    }
    /////////////////////////////////////////////////////////////////
    //Rectangle 属性动画-5 Playing Animations in Parallel or in Sequence 并行或顺序播放动画 鼠标点击矩形框出现效果
    //    Rectangle {
    //        id: banner
    //        width: 150; height: 100; border.color: "black"

    //        Column {
    //            anchors.centerIn: parent
    //            Text {
    //                id: code
    //                text: "Code less."
    //                opacity: 0.01
    //            }
    //            Text {
    //                id: create
    //                text: "Create more."
    //                opacity: 0.01
    //            }
    //            Text {
    //                id: deploy
    //                text: "Deploy everywhere."
    //                opacity: 0.01
    //            }
    //        }

    //        MouseArea {
    //            anchors.fill: parent
    //            onPressed: playbanner.start()
    //        }

    //        SequentialAnimation {
    //            id: playbanner
    //            running: false
    //            NumberAnimation { target: code; property: "opacity"; to: 1.0; duration: 200}
    //            NumberAnimation { target: create; property: "opacity"; to: 1.0; duration: 200}
    //            NumberAnimation { target: deploy; property: "opacity"; to: 1.0; duration: 200}
    //        }
    //    }


    /////////////////////////////////////////////////////////////////
    //Rectangle 属性动画-4 Default Animation as Behaviors 默认动画为行为 鼠标点击圆球出现动画
    //    Rectangle {
    //        width: 75; height: 75; radius: width
    //        id: ball
    //        color: "salmon"
    //        MouseArea{
    //            anchors.fill: parent
    //            onClicked: {
    //                ball.x += 50;
    //                ball.y += 50;
    //            }
    //        }

    //        component BounceAnimation : NumberAnimation {
    //           easing {
    //              type: Easing.OutElastic
    //              amplitude: 1.0
    //              period: 0.5
    //           }
    //        }

    //        Behavior on x {
    //            BounceAnimation {}
    //        }
    //        Behavior on y {
    //            BounceAnimation {}
    //        }
    //        Behavior on color {
    //            ColorAnimation { target: ball; duration: 100 }
    //        }
    //    }

    /////////////////////////////////////////////////////////////////
    //Rectangle 属性动画-3 鼠标按下和松开动画 通过State和transitions实现
    //    Rectangle {
    //        width: 75; height: 75
    //        id: button
    //        state: "RELEASED"

    //        MouseArea {
    //            anchors.fill: parent
    //            onPressed: button.state = "PRESSED"
    //            onReleased: button.state = "RELEASED"
    //        }

    //        states: [
    //            State {
    //                name: "PRESSED"
    //                PropertyChanges { target: button; color: "lightblue"}
    //            },
    //            State {
    //                name: "RELEASED"
    //                PropertyChanges { target: button; color: "lightsteelblue"}
    //            }
    //        ]
    //        //动画效果，去掉以后上面代码直接更改颜色，加上会有渐变过程
    //        transitions: [
    //            Transition {
    //                from: "PRESSED"
    //                to: "RELEASED"
    //                ColorAnimation { target: button; duration: 1000}
    //            },
    //            Transition {
    //                from: "RELEASED"
    //                to: "PRESSED"
    //                ColorAnimation { target: button; duration: 1000}
    //            }
    //        ]
    //    }


    /////////////////////////////////////////////////////////////////
    //Rectangle 属性动画-2 直接开启动画
    //    Rectangle {
    //        width: 100; height: 100
    //        color: "red"

    //        //顺序渐变，先变成黄色在变成蓝色
    //        SequentialAnimation on color {

    //                ColorAnimation {
    //                    to: "yellow";
    //                    duration: 1000
    //                }
    //                ColorAnimation {
    //                    to: "blue";
    //                    duration: 1000
    //                }
    //            }

    ////            ColorAnimation on color{
    ////                to: "yellow";
    ////                duration: 1000
    ////            }

    //    }



    /////////////////////////////////////////////////////////////////
    //Rectangle 属性动画-2 直接开启动画
    //        Rectangle {
    //            id: rect
    //            width: 100; height: 100
    //            color: "red"


    //            //修改当前控件的位置
    //            PropertyAnimation on x {
    //                to: 100
    //                //持续时间
    //                duration: 1000
    //            }
    //            PropertyAnimation on y {
    //                to: 100
    //                duration: 1000
    //            }
    //            PropertyAnimation on width {
    //                to: 200
    //                duration: 2000
    //            }
    //            PropertyAnimation on color {
    //                to: "black"
    //                duration: 2000
    //            }
    //        }
    /////////////////////////////////////////////////////////////////
    //Rectangle 属性动画-1  控制开启动画
    //    Rectangle {
    //        id: flashingblob
    //        width: 75; height: 75
    //        color: "blue"
    //        opacity: 1.0

    //        MouseArea {
    //            anchors.fill: parent
    //            onClicked: {
    //                //开启属性动画
    //                animateColor.start()
    //                animateOpacity.start()
    //                animateWidth.start()
    //            }
    //        }

    //        PropertyAnimation {
    //            id: animateColor;
    //            target: flashingblob;
    //            properties: "color";
    //            to: "green";
    //            //持续时间ms
    //            duration: 1000
    //        }

    //        NumberAnimation {
    //            id: animateOpacity
    //            target: flashingblob
    //            properties: "opacity"
    //            //透明度 0.1 - 1.0 持续时间2s
    //            from: 0.1
    //            to: 1.0
    //            duration: 2000
    //        }

    //        NumberAnimation {
    //            id: animateWidth
    //            target: flashingblob
    //            properties: "width"
    //            //透明度 75 - 150 持续时间2s
    //            from: 75
    //            to: 150
    //            duration: 2000
    //        }
    //    }


    /////////////////////////////////////////////////////////////////
    //Rectangle 根据鼠标状态改变颜色设置
    //    Rectangle {
    //        id: root
    //        width: 100; height: 100
    //        state: "normal"
    //        states: [
    //            State {
    //                name: "normal"
    //                PropertyChanges {tarage: root; root.color: "black";}
    //            },
    //            State {
    //                name: "red_color"
    //                PropertyChanges {tarage: root; root.color: "red"; root.width: 200 }
    //            },
    //            State {
    //                name: "blue_color"
    //                PropertyChanges {tarage: root; root.color: "blue"; root.height: 200 }
    //            }
    //        ]
    //        MouseArea{
    //            anchors.fill: parent
    //            onPressed: {
    //                root.state =  "blue_color"
    //            }
    //            onReleased: {
    //                root.state =  "red_color"
    //            }
    //        }
    //    }


    /////////////////////////////////////////////////////////////////
    //Rectangle 自定义控件
    //    MyRectAngle{
    //        x:100
    //        y:50
    //        width: 200
    //        height: 100
    //        myTopMargin: 5
    //        myBottomMargin: 5
    //    }

    /////////////////////////////////////////////////////////////////
    //Rectangle 属性设置
    //    Rectangle{
    //        width: 100
    //        height: 50
    //        color: "black"
    //        //旋转控件
    //        //rotation: 30
    //        //缩放控件
    //        //scale: 2
    //        //边框大小和颜色
    //        border.width: 2
    //        border.color: "red"
    //        //圆角弧度
    //        radius: 20

    //    }
    /////////////////////////////////////////////////////////////////
    //anchors 居中位置
    //    Rectangle{
    //        id: rect1

    //        height: 50
    //        width: 100
    //        focus: true
    //        color: "blue"
    //        //居中父控件
    //        //anchors.centerIn: parent
    //        //水平居中父控件的水平位置
    //        //anchors.horizontalCenter: parent.horizontalCenter
    //        //垂直居中父控件的垂直位置
    //        //anchors.verticalCenter: parent.verticalCenter
    //    }
    /////////////////////////////////////////////////////////////////
    //anchors 锚定控件相对位置
    //    Rectangle{
    //        id: rect1

    //        height: 50
    //        width: 100
    //        focus: true
    //        color: "blue"
    //    }

    //    Rectangle{
    //        id: rect2
    //        height: 50
    //        width: 100
    //        anchors.left: rect1.right
    //        anchors.leftMargin: 20
    //        focus: true
    //        color: "blue"
    //    }

    //    Rectangle{
    //        id: rect3
    //        height: 50
    //        width: 100
    //        anchors.top: rect1.bottom
    //        anchors.topMargin: 20
    //        focus: true
    //        color: "blue"
    //    }
    /////////////////////////////////////////////////////////////////
    //鼠标区域控制
    //    Rectangle{
    //        id: rect1
    //        x:100
    //        y:100
    //        height: 100
    //        width: 50
    //        focus: true
    //        color: "blue"
    //        //activeFocus:
    //        //鼠标区域
    //        MouseArea {
    //            //当前控件填充满父控件
    //            anchors.fill: parent
    //            onClicked: {
    //                console.log("on clicked")
    //            }

    //        }
    //        //回车需要焦点到当前控件下
    //        Keys.onReturnPressed: {
    //            console.log("on return pressed")
    //        }
    //    }
    /////////////////////////////////////////////////////////////////
    //    //控件重叠顺序控制
    //    Rectangle{
    //        id: rect1
    //        x:100
    //        y:100
    //        z:2
    //        height: 100
    //        width: 50
    //        focus: true
    //        color: "blue"
    //        //activeFocus:
    //    }

    //    Rectangle{
    //        id: rect2
    //        x:120
    //        y:100
    //        z:1
    //        height: 100
    //        width: 50
    //        focus: true
    //        //activeFocus:
    //         color: "yellow"
    //    }
    /////////////////////////////////////////////////////////////////
    //    opacity: 0.5 //透明的
    //    自定义信号槽
    //    signal my_msg()
    //    onMy_msg: {

    //    }
    //    每个属性都会有对应的槽函数
    //    onWidthChanged: {
    //        console.log("width:", width)
    //    }

    //    自定义变量
    //    property int my_Name: 0

    //    onMy_NameChanged: {

    //    }
    /////////////////////////////////////////////////////////////////
    //    Button{
    //        id:btn1
    //        width: 40
    //        height: 40
    //        focus: true
    //        objectName:"btn1"
    //        background: Rectangle{
    //            border.color: btn1.focus ? "blue" : "bluck"
    //        }
    //        onClicked: {
    //            console.log("btn1 clicked")
    //        }
    //        Keys.onRightPressed: {
    //            btn2.focus = true
    //        }
    //    }

    //    Button{
    //        id:btn2
    //        x: 100
    //        width: 40
    //        height: 40
    //        objectName:"btn2"
    //        background: Rectangle{
    //            border.color: btn2.focus ? "blue" : "bluck"
    //        }
    //        onClicked:{
    //            console.log("btn2 clicked")
    //        }
    //        //方向右键
    //        Keys.onRightPressed: {
    //            btn1.focus = true
    //        }
    //    }
    //    //是否在焦点上
    //    onActiveFocusItemChanged: {
    //        console.log("active focus item changed", activeFocusItem,activeFocusItem.objectName)
    //    }
    /////////////////////////////////////////////////////////////////

}
