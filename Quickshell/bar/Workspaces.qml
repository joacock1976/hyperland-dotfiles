import QtQuick
import Quickshell.Hyprland

Row {
    spacing: 6

    Repeater {
        model: Hyprland.workspaces

        Rectangle {
            required property var modelData

            width: 32
            height: 24
            radius: 6

            color: modelData.active ? "#CDD6F4" : "#313244"

            Text {
                anchors.centerIn: parent

                text: modelData.id.toString()

                font.pixelSize: 14
                font.bold: modelData.active

                color: modelData.active ? "#1E1E2E" : "#A6ADC8"
            }

            MouseArea {
                anchors.fill: parent

                hoverEnabled: true

                onEntered: {
                    if (!modelData.active)
                        parent.color = "#45475A"
                }

                onExited: {
                    parent.color = modelData.active
                        ? "#CDD6F4"
                        : "#313244"
                }

                onClicked: {
                    modelData.activate()
                }
            }
        }
    }
}
