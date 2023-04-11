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
                    text: qsTr("VEG")
                    Layout.alignment: Qt.AlignHCenter
                    onClicked: {
                        menuliststack.push(startvmenu)
                    }
                }

                Button{
                    text: qsTr("NON-VEG")
                    Layout.alignment: Qt.AlignHCenter
                    onClicked: {
                        menuliststack.push(startNmenu1)
                    }
                }

                Button{
                    text: qsTr("CONTINENTAL")
                    Layout.alignment: Qt.AlignHCenter
                    onClicked: {
                        menuliststack.push(startCmenu2)
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
                    id: menuliststack
                    initialItem: startvmenu
                }
                Component {
                    id: startvmenu
                    Loader{
                        source: "veglist.qml"
                    }
                }
                Component {
                    id: startNmenu1
                    Loader{
                        source: "nonveglist.qml"
                    }
                }
                Component {
                    id: startCmenu2
                    Loader{
                        source: "continental.qml"
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

                    Button{
                        text: qsTr("NEXT")
                        Layout.alignment: Qt.AlignHCenter
                        onClicked: {
                            //menuliststack.index++
                        }
                    }

                    Button{
                        text: qsTr("PREVIOUS")
                        Layout.alignment: Qt.AlignHCenter
                    }

                    Button{
                        text: qsTr("BACK")
                        Layout.alignment: Qt.AlignHCenter

                    }

                }

            }


        }
    }
}
