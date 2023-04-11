import QtQuick 2.9
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.3

Item {
Rectangle{
    anchors.fill: parent
    Rectangle {
          id: rectangle
          color: "#ffffff"
          anchors.fill: parent
          anchors.rightMargin: 0
          anchors.bottomMargin: 0
          anchors.leftMargin: 0
          anchors.topMargin: 0
          TableView {

              anchors.fill: parent
              clip: true
              headerVisible: false
              TableViewColumn {
                  role: "address"
                  title: "Address"
                  width: parent.width * 1/1.5
                  Layout.alignment: Qt.AlignLeft
              }

              TableViewColumn {
                  role: "mobile"
                  title: "Mobile"
                  width: parent.width * 1/4
                  Layout.alignment: Qt.AlignRight
              }

              model: ListModel {

                  ListElement {
                      address: "down1"
                      mobile: "345561"
                  }
                  ListElement {
                      address: "down2"
                      mobile: "345562"
                  }
                  ListElement {
                      address: "down3"
                      mobile: "345563"
                  }
              }
          }
      }
}
}
