import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Property binding")

    Rectangle {
        id: mainShapeId
        width: 50
        height: 50
        radius: 10
        color: "blue"
        MouseArea {
            onClicked: {

            }
        }
    }

    Rectangle {
        id: horizontalIncrementerId
        width: 50
        height: 50
        radius: 10
        color: "green"
        anchors.bottom: parent.bottom
        Text {
            id: horizontalIncText
            text: "h-inc"
            anchors.centerIn: parent
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                onClicked: {
                    mainShapeId.width = mainShapeId.width + 10
                }
            }
        }
    }

    Rectangle {
        id: verticalIncrementerId
        width: 50
        height: 50
        radius: 10
        color: "red"
        anchors.bottom: parent.bottom
        anchors.left: horizontalIncrementerId.right
        Text {
            id: verticalIncText
            text: "v-inc"
            anchors.centerIn: parent
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                mainShapeId.height = mainShapeId.height + 10
            }
        }
    }
}
