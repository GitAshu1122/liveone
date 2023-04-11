import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.VirtualKeyboard 2.15
import QtQml 2.15
import QtQml.Models 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3


ApplicationWindow {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    header: ToolBar{                       //Header is component of ApplicationWindow
                id: headertoolbar
                width: parent.width
                height: 30
                Rectangle{
                    anchors.fill: parent
                    color: "#008080"
                    border.color: "white"
                    border.width: 1
                    RowLayout{
                        anchors.fill: parent
                        Label {
                            text: Qt.formatDateTime(new Date(), "dd-MM-yy|hh:mm")
                            font.pixelSize: 15
                            font.bold: true
                            color: "White"
                            elide: Label.ElideRight
                            horizontalAlignment: Qt.AlignRight
                            verticalAlignment: Qt.AlignVCenter
                            Layout.fillWidth: true
                        }
                        Rectangle{
                            id: logoheader
                            anchors.top: parent.Center
                            anchors.left: parent.left
                            width: parent.width * 1/4
                            height: parent.height
                            color: "white"
                            border.color: "#ff6347"
                            Text {
                                id: myname
                                text: qsTr("Vaishnavi's Cafe")
                                anchors.centerIn: parent
                                font.pixelSize: 20
                                color: "#008080"
                            }
                        }
                    }
                }
    }

    footer: ToolBar{                       //Header is component of ApplicationWindow
        id: footertoolbar
        width: parent.width
        height: 60
        Rectangle{
            anchors.fill: parent
            border.color: "white"
            border.width: 1
            color: "#008080"
            RowLayout{
                width: parent.width * 1/3
                anchors.right:  parent.right
                anchors.verticalCenter:   parent.verticalCenter
                spacing: 1
                ToolButton{
                    id: mainmenu

                    Image {
                        id: menu11
                        source: "menu.png"
                        anchors.fill: parent
                        anchors.centerIn: parent

                    }
                    Rectangle{
                        color: "White"
                        anchors.top: mainmenu.bottom
                        anchors.right:  mainmenu.Center
                        x: 11
                        Text {
                            id: menu112
                            text: qsTr("MENU")
                            font.family: "Times New Roman"
                            font.pixelSize: 10
                            color: "white"
                        }
                    }
                    onClicked: {
                        mystackview.push(second_page);
                    }
                }

                ToolButton{
                    id: order
                    Image {
                        id: orderimg
                        source: "order.png"
                        anchors.fill: parent
                        anchors.centerIn: parent

                    }
                    Rectangle{
                        color: "White"
                        anchors.top: orderimg.bottom
                        anchors.left:  orderimg.left
                        x: 11
                        Text {
                            id: ordertxt
                            text: qsTr("YOUR ORDER")
                            font.family: "Times New Roman"
                            font.pixelSize: 10
                            color: "white"
                        }
                    }
                    onClicked: {
                        mystackview.push(third_page);
                    }
                }

                ToolButton{
                    id: rateus
                    Image {
                        id: rateusimg
                        source: "order.png"
                        anchors.fill: parent
                        anchors.centerIn: parent

                    }
                    Rectangle{
                        color: "White"
                        anchors.top: rateusimg.bottom
                        anchors.left:  rateusimg.left
                        x: 11
                        Text {
                            id: rateustxt
                            text: qsTr("RATE US!!")
                            font.family: "Times New Roman"
                            font.pixelSize: 10
                            color: "white"
                        }
                    }
                    onClicked: {
                        mystackview.push(fourth_page);
                    }
                }

                ToolButton{
                    id: aboutus

                    Image {
                        id: aboutusimg
                        source: "aboutus.jpg"
                        anchors.fill: parent
                        anchors.centerIn: parent

                    }
                    Rectangle{
                        color: "White"
                        anchors.top: aboutusimg.bottom
                        anchors.left:  aboutusimg.left
                        x: 11
                        Text {
                            id: aboutustxt
                            text: qsTr("ABOUT US")
                            font.family: "Times New Roman"
                            font.pixelSize: 10
                            color: "white"
                        }
                    }
                }
            }
        }
    }

    StackView {
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
            top: header.bottom
        }

        id: mystackview
        initialItem: starting_page
    }
    Component {
        id: starting_page
        Loader{
            source: "StartingPage.qml"
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

