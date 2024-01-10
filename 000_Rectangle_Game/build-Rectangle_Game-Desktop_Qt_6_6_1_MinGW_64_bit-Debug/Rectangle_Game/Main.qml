/*
TheNaserov
We are writing a program that if the user clicks on
each rectangle, the Circle will write the name of that
color on itself, if the user clicks on the circle we will
set a constant text on it!
*/


import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Rectangle Game")

    property string textToShow: "hello"


    Row {
        id: rowId
        anchors.centerIn: parent
        spacing: 20

        Rectangle {
            id: idRedRectangle
            width: 100; height: 100
            color: "red"
            radius: 10

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("red clicked")
                    textToShow = "red"
                }
            }
        }

        Rectangle {
            id: idBlueRectangle
            width: 100; height: 100
            color: "blue"
            radius: 10

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("blue clicked")
                    textToShow = "blue"
                }
            }
        }

        Rectangle {
            id: idYellowRectangle
            width: 100; height: 100
            color: "yellow"
            radius: 10

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("yellow clicked")
                    textToShow = "yellow"
                }
            }
        }

        Rectangle {
            id: idCircularRectangle
            width: 100; height: 100
            color: "pink"
            radius: 100

            Text {
                id: idText
                anchors.centerIn: parent
                text: textToShow
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("yellow clicked")
                    idText.text = "N/A"
                }
            }
        }
    }
}
