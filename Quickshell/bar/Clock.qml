import QtQuick

Text {
    id: clock

    text: Qt.formatDateTime(new Date(), "HH:mm")

    font.pixelSize: 15
    font.bold: true

    color: "#CDD6F4"

    Timer {
        interval: 1000
        running: true
        repeat: true

        onTriggered: {
            clock.text = Qt.formatDateTime(new Date(), "HH:mm")
        }
    }
}
