import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 480
    height: 400

    title: qsTr("Profile")

    Label {
        text: qsTr("You are on the Profile Page.")
        font.family: "Product Sans"
        font.pointSize: 12
        anchors.centerIn: parent
    }
}
