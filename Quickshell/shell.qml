import Quickshell //importa funciones basicas
import qs.bar

ShellRoot{ //raiz de la config
    PanelWindow{ //ventana especifica para el escritorio
        anchors{
            top: true
            left: true
            right: true
        }
    implicitHeight: 32

    color: "#1e1e2e"

    Workspaces{
        anchors{
            left: true
            leftMargin: 12
            verticalCenter: parent.verticalCenter
            }
        }
    Clock {
        anchors {
            horizontalCenter: parent.horizontalCenter
            verticalCenter: parent.verticalCenter
            }
        }

    }
}

