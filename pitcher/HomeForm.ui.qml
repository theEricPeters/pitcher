import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 480
    height: 400
    font.family: "Product Sans"

    title: qsTr("Pitcher")

    Label {
        text: qsTr("You are on the home page.")
        font.pointSize: 12
        anchors.centerIn: parent
    }
}
