import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3


Item {
    SwipeView{
       id:slider
       anchors.top: parent.top

       height: parent.height
       width: parent.width
       x:(parent.width-width)/2//make item horizontally center
       property var model :ListModel{}
       clip:true
       Repeater {
           model:slider.model
           Image{
              width: slider.width
              height: slider.height
              source:image
              fillMode: Image.Stretch
           }
       }
    }
    PageIndicator {
       anchors.top: slider.bottom

       x:(parent.width-width)/2
       currentIndex: slider.currentIndex
       count: slider.count
    }

    Timer{
    id : tim
    interval: 2000
    running: true
    repeat: true
    onTriggered: {
    slider.currentIndex++
}
}
 Component.onCompleted: {
  slider.model.append({image:"1.jfif"})
  slider.model.append({image:"2.jfif"})
  slider.model.append({image:"3.jfif"})
  slider.model.append({image:"4.jfif"})
  }


}
