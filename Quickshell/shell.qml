Import Quickshell //importa funciones basicas
import Quickshell.wayland // importa componentes de wayland

ShellRoot{ //raiz de la config
    PanelWindow{ //ventana especifica para el escritorio
        anchors{
            top: true
            left: true
            right: true
        }
    implicitHeight: 32

    color: "#1e1e2e"
    }
}

