import QtQuick
import QtQuick.Controls 2.5



Rectangle {

    width: 200
    height: 100
    color: "black"

    property alias attr: attributes
    QtObject { //私有化变量
        id: attributes
        property int testValue: 0
    }

    Component.onCompleted: {
//        console.log(attributes.testValue)
    }
}
