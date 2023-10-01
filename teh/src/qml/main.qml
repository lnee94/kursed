import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.5

Window
{
    id: window
    width: 200 //Screen.width *10
    height: 200 //Screen.height *10
    visible: true

    color: "transparent"
    // color: "#000000"
    flags: Qt.FramelessWindowHint


/*
    Rectangle {
    width: 100; height: 100
    color: "blue"
    transform: Rotation { origin.x: 50; origin.y: 50; angle: 45}
}

*/


property var i: 0

    Image {
        id: ima
        anchors.fill: parent
        source: "qrc:/qml/main.qmlg"
        rotation: 45
        // transform: Rotation { origin.x: 100; origin.y: 100;  angle: 45 }
    }
      Timer {
    interval: 1; running: true; repeat: true
    onTriggered: {

            // window.setX(i)
            i=(1+i)%360;
            // console.log(i);
            ima.rotation=i;

    }
}



}
