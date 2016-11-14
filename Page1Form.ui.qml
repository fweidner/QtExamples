import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    property alias sig_helloWorld: sig_helloWorld
    property alias sig_helloWorldString: sig_helloWorldString
    property alias sig_helloWorldFromCpp: sig_helloWorldFromCpp

    ColumnLayout {
        id: columnLayout1
        x: 8
        y: 97
        width: 205
        height: 100
    }

    Button {
        id: sig_helloWorld
        x: 19
        y: 381
        text: qsTr("signalToCpp")
    }

    Button {
        id: sig_helloWorldString
        x: 139
        y: 381
        text: qsTr("signalToCpp(String)")
    }

    Button {
        id: sig_helloWorldFromCpp
        x: 280
        y: 381
        text: qsTr("signalFromCpp")
    }
}
