import QTQuick
import Quickshell.Hyprland

Row{
  spacing: 8

  Repeater {
      model:Hyprland.workspaces

        Text {
            required property var modelData

            text: modelData.name
            font.pixelSize: 16

            color: modelData.active ? "#ffffff" : "#888888"

            MouseArea {
                anchors.fill: parent

                onClicked: {
                    modelData.activate()
                }
            }
        }
    }
}
