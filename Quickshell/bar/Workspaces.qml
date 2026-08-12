import QtQuick
import Quickshell.Hyprland

Row {
    spacing: 8

    Repeater {
        model: Hyprland.workspaces

        Text {
            required property var modelData

            text: modelData.name

            font.pixelSize: 16
            font.bold: modelData.active

            color: {
                if (modelData.active)
                    return "#CDD6F4"

                return "#6C7086"
            }

            MouseArea {
                anchors.fill: parent

                hoverEnabled: true

                onEntered: {
                    parent.color = "#BAC2DE"
                }

                onExited: {
                    parent.color = modelData.active
                        ? "#CDD6F4"
                        : "#6C7086"
                }

                onClicked: {
                    modelData.activate()
                }
            }
        }
    }
}
