import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Basic data types")

    property string currentType: "nothing"

    property string name : "Naser Rezayi"
    property date dateOfBirth : "1998-07-10"
    property bool isMale : true
    property double mHeight: 190.7
    property real mWeight : 80
    property int age : 25
    property list<string> skills : {"C++", "Qt"}
    property url website : "https://thenaserov.github.io"
    property var job: "Qt/C++ Software Engineer"

    // I don't know how to use them
    // property enumeration
    // property variant
    // property void

    Column {
        id: mainRowId
        anchors.centerIn: parent
        spacing: 10

        Rectangle {
            id: nameRect
            width: 100; height: 30
            color: "yellow"
            radius: 10
            Text {
                id: textOfNameSection
                anchors.centerIn: parent
                text: name
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    currentType = "string"
                }
            }
        }

        Rectangle {
            id: birthRect
            width: 150; height: 30
            color: "orange"
            radius: 10
            Text {
                id: textOfBirthSection
                anchors.centerIn: parent
                text: dateOfBirth.toDateString()
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    currentType = "date"
                }
            }
        }

        Rectangle {
            id: sexRect
            width: 100; height: 30
            color: "red"
            radius: 10
            Text {
                id: textOfSexSection
                anchors.centerIn: parent
                text: "sex"
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    currentType = "bool"
                    if(isMale){
                        textOfSexSection.text = "Male"
                    }else{
                        textOfSexSection.text = "Female"
                    }
                }
            }
        }

        Rectangle {
            id: heightRect
            width: 100; height: 30
            color: "purple"
            radius: 10
            Text {
                id: textOfHeightSection
                anchors.centerIn: parent
                text: mHeight + " cm"
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    currentType = "double"
                }
            }
        }

        Rectangle {
            id: weightRect
            width: 100; height: 30
            color: "blue"
            radius: 10
            Text {
                id: textOfWeightSection
                anchors.centerIn: parent
                text: mWeight + " Kg"
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    currentType = "real"
                }
            }
        }

        Rectangle {
            id: ageRect
            width: 100; height: 30
            color: "green"
            radius: 10
            Text {
                id: textOfAgeSection
                anchors.centerIn: parent
                text: age + " y.o."
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    currentType = "int"
                }
            }
        }

        Rectangle {
            id: skillsRect
            width: 150; height: 30
            color: "grey"
            radius: 10
            Text {
                id: textOfSkillsSection
                anchors.centerIn: parent
                text: skills[0]
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    currentType = "list"
                }
            }
        }

        Rectangle {
            id: jobRect
            width: 150; height: 30
            color: "greenyellow"
            radius: 10
            Text {
                id: textOfJobSection
                anchors.centerIn: parent
                text: job
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    currentType = "var"
                }
            }
        }

        Rectangle {
            id: websiteRect
            width: 150; height: 30
            color: "light blue"
            radius: 10
            Text {
                id: textOfWebsiteSection
                anchors.centerIn: parent
                text: website
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    currentType = "url"
                    Qt.openUrlExternally(website)
                }
            }
        }

        Rectangle {
            id: resultId
            width: 100; height: 30
            color: "yellow"
            radius: 10
            Text {
                id: textOfResultSection
                anchors.centerIn: parent
                text: currentType
            }
        }
    }
}
