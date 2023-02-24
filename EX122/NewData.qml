import QtQuick 2.0
import QtQuick.Controls 2.5
Rectangle {
color: '#eeeee4'
width: 500
height: 300
id:mainrect
Text {
x:10
y:10
text: qsTr("Имя задачи")
}
Rectangle
{
color: 'white'
x: jobName.x
y: jobName.y
width: jobName.width
height: jobName.height
}
TextEdit{
    id:jobName
    y:10
    x:100
    width: 400
    focus: true;
    height: 25

}
Text {
    x:10
    y:40
    text: qsTr("Дата")
}
Rectangle
{
color: 'white'
x: flick.x
y: flick.y
width: flick.width
height: flick.height
}
Flickable {
    id:flick
    x:100
    y:40
    width: 400
    height: 25
    TextArea.flickable: TextArea {
        id: date
        width: flick.width
        height: flick.height

        focus: true;
        wrapMode: TextEdit.Wrap
        selectByMouse: true
    }
}
Rectangle
{
color: 'white'
x: progressJob.x
y: progressJob.y
width: progressJob.width
height: progressJob.height
}
TextEdit{
    id:progressJob
    y:70
    x:100
    width: 400
    focus: true;
    height: 25

}
Text {
    x:10
    y:70
    text: qsTr("Прогресс")
}
Button {
    id:addData
    text: qsTr("Добавить")
    onClicked:
    {
        var name = jobName.text
        var dateGet = date.text
        var progress = progressJob.text
        mainrect.parent.add(name,dateGet,progress)
    }
    Component.onCompleted: {
        x = mainrect.width - 100;
        y = mainrect.height - 30;
        width = 100;
        height = 30;
    }
}
}

