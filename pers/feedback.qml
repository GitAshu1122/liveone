import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Shapes 1.15

Item {
    Rectangle{
        id: feedback
        anchors.fill: parent
        ColumnLayout{
            anchors.fill: parent
            Label{
                Layout.alignment: Qt.AlignHCenter
                width: parent.width
                height: 50
                color: "#f0e68c"
                text: "YOUR FELLINGS"
                font.bold: true
                font.pixelSize: 20
                font.italic: true
                font.wordSpacing: 1
            }
            Label{
                Layout.alignment: Qt.AlignHCenter
                width: parent.width
                height: 50
                color: "#f0e68c"
                text: "WE'D APPRECIATE YOUR FEEDBACK"
                font.bold: true
                font.pixelSize: 20
                font.italic: true
                font.wordSpacing: 1
            }
            Rectangle{
                id:feedbackbuttonsrect
                width: parent.width
                height: 100
                color: "white"
                RowLayout{
                    anchors.fill: parent
                    anchors.verticalCenter: parent.verticalCenter
                    Button{
                        height: 80
                        width: 30
                        text: "DELIGHTFUL"
                        font.pixelSize: 10
                    }
                    Button{
                        height: 80
                        width: 30
                        text: "AVERAGE"
                        font.pixelSize: 10
                    }
                    Button{
                        height: 80
                        width: 30
                        text: "BAD"
                        font.pixelSize: 10
                    }
                    Button{
                        height: 80
                        width: 30
                        text: "AWWFUL"
                        font.pixelSize: 10
                    }
                }
            }

        }
    }
}
