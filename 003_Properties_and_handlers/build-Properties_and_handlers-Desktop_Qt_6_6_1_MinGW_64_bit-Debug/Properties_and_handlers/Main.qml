import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Properties and handlers")

    Column {
        id: mainColumnId
        anchors.centerIn: parent
        spacing: 10

        TextInput {
            id: textNameInputId
            text: "Enter your name:"
            anchors.centerIn: parent
            cursorVisible: false
        }

        Rectangle {
            id : submitNameRectangleId
            width : 100; height: 20
            radius: 20
            color: "greenyellow"
            Text {
                id: submitextId
                anchors.centerIn: parent
                text: "submit"
            }
        }
    }
}
