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




    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////  P7   QML-Button    ///////////////////////////////////////////////////////////////////////////
    ///////////////////////////////vShellCode: 2022-10-26  ///////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


    ///////////////////////////////////////////////////////////////
    //Button //按钮相关属性设置
    //    Button {
    //        id: btn
    //        width: 150
    //        height: 50
    //        hoverEnabled: false
    //        autoRepeat: true
    //        background: Rectangle{
    //            anchors.fill: btn
    //            color: {
    //                if(btn.pressed){
    //                    return "green"
    //                }else{
    //                    return "blue"
    //                }
    //            }
    //            border.width: 10
    //            border.color: {
    //                if(btn.pressed){
    //                    return "red"
    //                }else{
    //                    return "black"
    //                }
    //            }
    //        }
    //    }


    ///////////////////////////////////////////////////////////////
    //Button //按钮相关属性设置
    //    Button {
    //        id: btn
    //        width: 150
    //        height: 50
    //        autoRepeat: true
    //        //此属性以毫秒为单位保存自动重复的初始延迟。默认值为300 ms。 此属性在QtQuick中引入。控制2.4（Qt 5.11）。 请参见autoRepeat和autoRepeatInterval。
    //        autoRepeatDelay: 3000
    //        //此属性以毫秒为单位保持自动重复的间隔。默认值为100 ms。 此属性在QtQuick中引入。控制2.4（Qt 5.11）。 另请参见autoRepeat和autoRepeatDelay。
    //        autoRepeatInterval: 1000
    //        checkable: true
    //        //可以判断是否按下了鼠标
    //        onDownChanged: {
    //            console.log("down:",down,"pressed", pressed)
    //        }
    ////        icon.source: "file:///" + "C:/Users/LS/Documents/Work/Quick-Study/src/xukun.jpeg"
    ////        icon.color: "red"

    ////        indicator: Image {
    ////            id: ind
    ////            source: "file:///" + "C:/Users/LS/Documents/Work/Quick-Study/src/xukun.jpeg"
    ////        }

    //        text: "pressed"
    //    }





    ///////////////////////////////////////////////////////////////
    //Button //按钮相关属性设置
    //    Button {
    //        id: btn
    //        width: 50
    //        height: 50
    //        //此属性控制按钮在按住时会重复pressed（）、released（）和clicked（）信号。
    //        //如果此属性设置为true，则不会发出pressAndHold（）信号。
    //        //默认值为false。
    //        //初始延迟和重复间隔由autoRepeatDelay和autoRepeat interval以毫秒为单位定义。
    //        autoRepeat: true
    //        //此属性以毫秒为单位保存自动重复的初始延迟。默认值为300 ms。 此属性在QtQuick中引入。控制2.4（Qt 5.11）。 请参见autoRepeat和autoRepeatInterval。
    //        autoRepeatDelay: 3000
    //        //此属性以毫秒为单位保持自动重复的间隔。默认值为100 ms。 此属性在QtQuick中引入。控制2.4（Qt 5.11）。 另请参见autoRepeat和autoRepeatDelay。
    //        autoRepeatInterval: 1000
    //        onClicked: {
    //            console.log("onClicked")
    //        }
    //        onPressed: {
    //            console.log("onPressed")
    //        }
    //        onReleased: {
    //            console.log("onReleased")
    //        }
    //    }

    ///////////////////////////////////////////////////////////////
    //Button //按钮相关属性设置
    //    Button {
    //        id: btn
    //        width: 50
    //        height: 50
    //        x: 50
    //        //按钮可以突出显示，以吸引用户的注意力。它对键盘交互没有影响。 默认值为false
    //        //highlighted: true
    //        //平面按钮通常不会绘制背景，除非按下或选中它。 默认值为false
    //        //flat: true
    //        //此属性保存按钮是否可选中。 当用户单击可选中按钮或在按钮处于活动焦点时按下空格键时，可选中按钮在选中（打开）和未选中（关闭）之间切换。 默认值为false。
    //        checkable: true
    //        //此属性保存是否启用自动独占性。 如果启用了自动排他性，则属于同一父项的可选中按钮的行为就像它们是同一ButtonGroup的一部分一样。任何时候只能选中一个按钮；选中另一个按钮会自动取消选中先前选中的按钮。
    //        autoExclusive: true
    //        onCheckableChanged: {
    //          console.log("changed",checkable)
    //        }
    //        onClicked: {
    //            //6.2版本后checked属性的修改不再影响checkable属性
    //            //btn.checked = !btn.checked
    //            btn.checkable = !btn.checkable
    //            //console.log("btn.checked",btn.checked)
    //        }
    //    }
    //    Button {
    //        id: btn1
    //        width: 50
    //        height: 50
    //        x: 120
    //        //按钮可以突出显示，以吸引用户的注意力。它对键盘交互没有影响。 默认值为false
    //        //highlighted: true
    //        //平面按钮通常不会绘制背景，除非按下或选中它。 默认值为false
    //        //flat: true
    //        //此属性保存按钮是否可选中。 当用户单击可选中按钮或在按钮处于活动焦点时按下空格键时，可选中按钮在选中（打开）和未选中（关闭）之间切换。 默认值为false。
    //        checkable: true
    //        //此属性保存是否启用自动独占性。 如果启用了自动排他性，则属于同一父项的可选中按钮的行为就像它们是同一ButtonGroup的一部分一样。任何时候只能选中一个按钮；选中另一个按钮会自动取消选中先前选中的按钮。
    //        autoExclusive: true
    //    }
    //    Button {
    //        id: btn2
    //        width: 50
    //        height: 50
    //        x: 170
    //        //按钮可以突出显示，以吸引用户的注意力。它对键盘交互没有影响。 默认值为false
    //        //highlighted: true
    //        //平面按钮通常不会绘制背景，除非按下或选中它。 默认值为false
    //        //flat: true
    //        //此属性保存按钮是否可选中。 当用户单击可选中按钮或在按钮处于活动焦点时按下空格键时，可选中按钮在选中（打开）和未选中（关闭）之间切换。 默认值为false。
    //        checkable: true
    //        //此属性保存是否启用自动独占性。 如果启用了自动排他性，则属于同一父项的可选中按钮的行为就像它们是同一ButtonGroup的一部分一样。任何时候只能选中一个按钮；选中另一个按钮会自动取消选中先前选中的按钮。
    //        autoExclusive: true
    //    }




    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////// P6   QML-MouseArea ///////////////////////////////////////////////////////////////////////////
    ///////////////////////////////vShellCode: 2022-10-26  ///////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////








    ///////////////////////////////////////////////////////////////
    //MouseArea //鼠标区域相关操作 子控件继承父控件属性
    //    Rectangle {
    //         color: "yellow"
    //         width: 100; height: 100

    //         MouseArea {
    //             anchors.fill: parent
    //             onClicked: console.log("clicked yellow")
    //         }

    //         Rectangle {
    //             color: "blue"
    //             width: 50; height: 50

    //             MouseArea {
    //                 anchors.fill: parent
    //                 //子控件向父控件传递鼠标点击时间选项， ture 传递  false 不传递
    //                 propagateComposedEvents: true
    //                 onClicked: (mouse)=> {
    //                     console.log("clicked blue")
    //                     //子控件向父控件传递鼠标点击时间选项， ture 不传递  false 传递
    //                     mouse.accepted = false
    //                 }
    //                 onDoubleClicked: {
    //                     console.log("onDoubleClicked")
    //                 }
    //             }
    //         }
    //     }
    ///////////////////////////////////////////////////////////////
    //MouseArea //鼠标区域相关操作 子控件继承父控件属性
    //    Rectangle {
    //        width: 480
    //        height: 320
    //        Rectangle {
    //            x: 30; y: 30
    //            width: 300; height: 240
    //            color: "lightsteelblue"

    //            MouseArea {
    //                anchors.fill: parent
    //                drag.target: parent;
    //                drag.axis: "XAxis"
    //                drag.minimumX: 30
    //                drag.maximumX: 150
    //                //支持子控件和父控件一样拖动
    //                drag.filterChildren: true

    //                Rectangle {
    //                    color: "yellow"
    //                    x: 50; y : 50
    //                    width: 100; height: 100
    //                    MouseArea {
    //                        anchors.fill: parent
    //                        onClicked: console.log("Clicked")
    //                    }
    //                }
    //            }
    //        }
    //    }
    ///////////////////////////////////////////////////////////////
    //MouseArea //鼠标区域相关操作
    //    Rectangle {
    //        id: container
    //        width: 600; height: 200

    //        Rectangle {
    //            id: rect
    //            width: 50; height: 50
    //            color: "red"
    //            //透明度渐变
    //            opacity: (600.0 - rect.x) / 600
    //            //自由移动矩形框位置
    //            MouseArea {
    //                anchors.fill: parent
    //                drag.target: rect
    //                drag.axis: Drag.XAxis | Drag.YAxis
    //                drag.minimumX: 0
    //                drag.maximumX: container.width - rect.width
    //            }
    //        }
    //    }
    ///////////////////////////////////////////////////////////////
    //MouseArea //鼠标区域相关操作
    //        MouseArea {
    //            id:mouseArea
    //            width: 200
    //            height: 200
    //            //添加鼠标左键和右键按下支持
    //            acceptedButtons: Qt.LeftButton | Qt.RightButton
    //            ////设置为false，控件停止响应任何操作
    //            enabled: true
    //            /////hoverEnabled: true 这个开启后鼠标移动进去后会触发一系列槽函数
    //            hoverEnabled: false
    //            ////鼠标长按时间设置会触发onPressAndHold
    //            pressAndHoldInterval: 2000
    //            //更改鼠标移入进去后光标的样式
    //            cursorShape: Qt.CrossCursor
    //            Rectangle {
    //                anchors.fill: parent
    //                color: "black"
    //            }
    //            //鼠标长按触发信号
    //            onPressAndHold: {
    //                console.log("onPressAndHold")
    //            }

    //            /////hoverEnabled: true 这个开启后鼠标移动进去后会触发这个槽函数 false 鼠标点击会触发
    //            onMouseXChanged: {
    //                console.log("x:", mouseX)
    //            }
    //            onMouseYChanged: {
    //                console.log("y:", mouseY)
    //            }
    //            /////hoverEnabled: true 这个开启后鼠标移动进去后会触发这个槽函数
    //            onHoveredChanged: {
    //                console.log("onHoveredChanged")
    //            }

    //            onClicked: {
    //                console.log("clicked")
    //            }
    //            ////鼠标按下
    //            onContainsMouseChanged: {
    //                    console.log("onCantainsMouseChanged",containsMouse)
    //            }
    //            ////鼠标松开
    //            onContainsPressChanged: {
    //                    console.log("onCantainsMouseChanged",containsPress)
    //            }
    //            //判断鼠标某个案件是否真的按下
    //            onPressed: {
    //                var ret = pressedButtons & Qt.LeftButton
    //                var ret1 = pressedButtons & Qt.RightButton
    //                console.log(ret ? "left" : ret1 ? "Right" : "other")
    //                console.log("pressed")
    //            }
    //            onReleased: {
    //                console.log("released")
    //            }
    //}






    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////P5   QML-Component与Loader  //////////////////////////////////////////////////////////////////////
    ///////////////////////////////vShellCode: 2022-10-26  ///////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////





    ///////////////////////////////////////////////////////////////
    //Component 封装通过Loader动态加载 三个封装3选1
    //    Component {
    //        id: com
    //        Image {
    //            id: img
    //            source: "file:///" + "C:/Users/LS/Documents/Work/Quick-Study/src/xukun.jpeg"  //绝对路径。windows下 绝对路径前面要加 "file:///" 三个下划线，否则加载不出来
    //            sourceSize.width: 200
    //            sourceSize.height: 200
    //        }
    //    }
    //    Component {
    //        id: com
    //        AnimatedImage {
    //            id: img
    //            source: "file:///" + "C:/Users/LS/Documents/Work/Quick-Study/src/xukun.gif"   //绝对路径。windows下 绝对路径前面要加 "file:///" 三个下划线，否则加载不出来
    //            speed: 5
    //        }
    //    }
    //    Component {
    //        id:com
    //        Rectangle{
    //            id: rect
    //            width: 200
    //            height: 100
    //            color: "black"
    //            Component.onCompleted: {
    //                console.log("onComponend", width, height, color)
    //            }
    //            //Component.onDestruction 控件销毁时会调用这个函数
    //            Component.onDestruction: {
    //                console.log("onDestruchtion")
    //            }
    //        }
    //    }
    //    //使用Loader 动态加载 Component组件
    //    Loader {
    //        id: loader
    //        //动态加载组件
    //        //        source: "./MyRectAngle.qml"
    //        asynchronous: true
    //        sourceComponent: com
    //        onStatusChanged: {
    //            console.log("status: ", status)
    //        }
    //    }
    //    Button {
    //        width: 50
    //        height: 50
    //        x: 200
    //        onClicked: {
    //            loader.item.paused = !loader.item.paused
    //            //            loader.item.width = 50
    //            //            loader.item.height = 50
    //            //            loader.item.color = "red"
    //            //            loader.sourceComponent = null
    //        }
    //    }
    ///////////////////////////////////////////////////////////////


    /////////////////////////////////////////////////////////////////
    //    //Component.onCompleted 控件生成时会调用这个函数，可以用于初始化
    //    Component.onCompleted: {
    //        console.log("onComponend", width, height, color)
    //    }
    //    //Component.onDestruction 控件销毁时会调用这个函数
    //    Component.onDestruction: {
    //        console.log("onDestruchtion")
    //    }




    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////P4   QML-states与transitions-动画效果制作     ///////////////////////////////////////////////////
    ///////////////////////////////vShellCode: 2022-10-26  ///////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////






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




    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////P3   实现自定义边框RectAngle     ////////////////////////////////////////////////////////////////
    ///////////////////////////////vShellCode: 2022-10-26  ///////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


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



    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////P2   QML-item与Rectangle     //////////////////////////////////////////////////////////////////
    ///////////////////////////////vShellCode: 2022-10-26  ///////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


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





    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////P1   QML-Window介绍      ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////vShellCode: 2022-10-26  ///////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



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
