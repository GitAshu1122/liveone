import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Item {
    anchors.fill: parent
    visible: true

    StackView {
        id: stack
        initialItem: starting_page
        anchors.fill: parent
    }

    Component {
        id: starting_page
        Loader{
            source: "mainmenu.qml"
        }
    }
    Component {
        id: second_page
        Loader{
            source: "SecondPage.qml"
        }
    }
    Component {
        id: third_page
        Loader{
            source: "ThirdPage.qml"
        }
    }
    Component {
        id: fourth_page
        Loader{
            source: "FourthPage.qml"
        }
    }
}

/*
    ListView {
        width: parent.width
        height: parent.height
        anchors.centerIn: parent
        spacing: 10
        model: ListModel {
            ListElement {
                name: 'Pedro'
                age: 30
            }
            ListElement {
                name: 'Juan'
                age: 23
            }
            ListElement {
                name: 'Ana'
                age: 19
            }
            ListElement {
                name: 'Luisa'
                age: 25
            }
        }
        delegate: Rectangle {
            width: parent.width
            height: 20
            color: 'red'
            Text {
                anchors.centerIn: parent
                color: 'white'
                text: 'Name: ' + name + ', Age: ' + age
                font.pointSize: 20
            }
        }
    }
  */
