import Quickshell
import Quickshell.Wayland

ShellRoot {
    PanelWindow {
        anchors {
            top: true
            left: true
            right: true
        }

        implicitHeight: 50

        color: "red"

        Text {
            text: "HOLA"
            color: "white"
            font.pixelSize: 24

            anchors.centerIn: parent
        }
    }
}
