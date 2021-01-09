import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    id: window
    width: 480
    height: 960
    visible: true
    title: qsTr("Stack")

    header: ToolBar {
        contentHeight: toolButton.implicitHeight


        ToolButton {
            id: toolButton
            text: stackView.depth > 1 ? "\u25C0" : "\u2630"
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()
                } else {
                    drawer.open()
                }
            }
        }

        Label {
            color: "#fff"
            text: stackView.currentItem.title
            font.pointSize: 15
            font.family: "Product Sans"

            anchors.centerIn: parent
        }
    }

    Drawer {
        id: drawer
        width: window.width * 0.66
        height: window.height

        Column {
            anchors.fill: parent
            topPadding: 24

            ItemDelegate {
                id: profileButton

                text: qsTr("Profile")
                font.family: "Product Sans"
                font.pointSize: 12
                width: parent.width
                onClicked: {
                    stackView.push("profile.ui.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Page 2")
                font.family: "Product Sans"
                font.pointSize: 12
                width: parent.width
                onClicked: {
                    stackView.push("Page2Form.ui.qml")
                    drawer.close()
                }
            }
        }
    }

    StackView {
        id: stackView
        initialItem: "HomeForm.ui.qml"
        anchors.fill: parent
        anchors.topMargin: 0
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/
