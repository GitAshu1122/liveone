import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Item {
    ColumnLayout{
        anchors.fill: parent
        Rectangle{
            id: menubuttoncolumn
            width: 160.5
            height: parent.height
            color: "white"
            border.color: "#708090"
            border.width: 2
            ColumnLayout{
                height: parent.height
                width: parent.width
                spacing: 1

                Button{
                    text: qsTr("Eat More")
                    Layout.alignment: Qt.AlignHCenter
                    onClicked: {
                        myorderpagestack.push(orderemoreitems)
                    }
                }

                Button{
                    text: qsTr("TIP")
                    Layout.alignment: Qt.AlignHCenter
                    onClicked: {

                    }
                }

                Button{
                    text: qsTr("FEEDBACK")
                    Layout.alignment: Qt.AlignHCenter
                    onClicked: {
                        myorderpagestack.push(feedback)
                    }
                }

                Button{
                    text: qsTr("BACK")
                    Layout.alignment: Qt.AlignHCenter
                    onClicked: {
                        myorderpagestack.push(ordereditems)
                    }
                }

            }

        }

        ColumnLayout{
            id: columnstack
            anchors{
                top: parent.top
                left: menubuttoncolumn.right
                right: parent.right
                bottom: parent.bottom
            }
            Rectangle{
                width: parent.width
                height: parent.height - menulistbuttonsrect.height
                StackView {
                    anchors.fill: parent
                    id: myorderpagestack
                    initialItem: ordereditems
                }
                Component {
                    id: ordereditems
                    Loader{
                        source: "myorder.qml"
                    }
                }
                Component{
                    id: orderemoreitems
                    Loader{
                        source: "mainmenu.qml"
                }
                }
                Component {
                    id: feedback
                    Loader{
                        source: "feedback.qml"
                    }
                }
            }

            Rectangle{
                id: menulistbuttonsrect
                Layout.alignment: Qt.AlignBottom
                width: parent.width
                height: 50
                border.color: "#708090"
                border.width: 2

                RowLayout{
                    id: menulistbuttonsrow
                    anchors.fill: parent

                    Label{
                        height: parent.height
                        width: parent.width - rate.width
                        color: "steelblue"
                        text: "Total Bill :"
                        font.pixelSize: 20
                        Layout.alignment: Qt.AlignLeft
                    }

                    Label{
                        id: rate
                        height: parent.height
                        width: parent.width * 1/3
                        text: "BILL"
                        color: "steelblue"
                        font.pixelSize: 20


                    }
                }
            }
        }
    }
}
