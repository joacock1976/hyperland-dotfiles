import QtQuick

Text {
    id: clock

    color: "white"
    font.pixelSize: 16

    function updateTime() {
        text = Qt.formatDateTime(new Date(), "ddd dd MMM · HH:mm")
    }

    Component.onCompleted: updateTime()

    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: clock.updateTime()
    }
}
