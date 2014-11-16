import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Window 2.2
import QtMultimedia 5.0

Window {
    visible: true
    width: 360
    height: 560
    title: "ITS Planners"
    color: "#0cb997"

    MouseArea {
        id: mouseArea1
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent


        Text {
            id: txtITSmain
            x: 107
            y: 218
            width: 147
            height: 165
            text: qsTr("ITS")
            anchors.horizontalCenterOffset: 1
            anchors.horizontalCenter: parent.horizontalCenter
            font.family: uniSans.name
            font.pointSize: 80

            Text {
                id: txtIN
                x: 8
                y: 104
                width: 12
                height: 16
                text: "in"
                font.family: uniSans.name
            }

            Text {
                id: txtTime
                x: 44
                y: 104
                width: 12
                height: 16
                text: "time"
                font.bold: true
                font.family: uniSans.name
            }

            Text {
                id: txtSched
                x: 94
                y: 104
                width: 12
                height: 16
                text: qsTr("schedule")
                font.bold: true
                font.family: uniSans.name
            }

            Text {
                id: txtThatSimple
                x: -3
                y: 126
                color: "#f9f4f4"
                text: qsTr("that simple")
                font.pointSize: 20
                font.family: uniSans.name
            }
        }

Image {
    id: imgITSlogo
    x: 95
    y: 32
    width: 170
    height: 170
    anchors.horizontalCenter: parent.horizontalCenter
    z: 4
    fillMode: Image.PreserveAspectFit
    source: "qrc:/images/ITSlogo.png"
    sourceSize.height: 800
    sourceSize.width: 750
    visible: true
}

Image {
    id: alarms_img
    x: 137
    y: 401
    width: 64
    height: 64
    sourceSize.height: 64
    sourceSize.width: 64
    fillMode: Image.PreserveAspectFit
    source: "qrc:/images/circular191.png"
    MouseArea {
        id: alarms_goto
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.top: parent.top
    }

    Text {
        id: alarms_txt
        x: 10
        y: 70
        text: qsTr("Alarms")
        font.pixelSize: 12
        font.family: uniSans.name
    }
}

Image {
    id: timetables_img
    x: 26
    y: 401
    width: 64
    height: 64
    sourceSize.height: 64
    sourceSize.width: 64
    fillMode: Image.PreserveAspectCrop
    source: "qrc:/images/approve9.png"

    MouseArea {
        id: timetables_goto
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        onClicked: {
            var component = Qt.createComponent("timetable.qml");
            win = component.createObject(timetable);
            win.show();
        }
    }

    Text {
        id: timetables_txt
        x: 0
        y: 70
        text: qsTr("Timetables")
        font.pixelSize: 12
        font.family: uniSans.name
    }
}

Image {
    id: settings_img
    x: 254
    y: 401
    width: 64
    height: 64
    sourceSize.height: 64
    fillMode: Image.PreserveAspectFit
    source: "qrc:/images/config12.png"
    sourceSize.width: 64
    MouseArea {
        id: settings_goto
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.top: parent.top
    }

    Text {
        id: settings_txt
        x: 7
        y: 70
        text: qsTr("Settings")
        font.pixelSize: 12
        font.family: uniSans.name
    }
}

FontLoader{
    id:uniSans;
    source:"file:///C:/Windows/Fonts/UNI SANS THIN.OTF";

}



}
}

