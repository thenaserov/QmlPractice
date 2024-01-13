import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Properties and handlers")

    property string mName: "TheNaserov"
    onMNameChanged: {
        console.log("Name chnaged!")
    }
    Rectangle{
        id: buttonRectangle
        width: 100
        height: 100
        radius: 20
        color: "greenyellow"
        anchors.centerIn: parent
        MouseArea {
            anchors.fill: parent
            onClicked: {
                mName = "Nahid"
            }
        }
    }
}
