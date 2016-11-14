import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("QtExamples")

    signal helloWorld
    signal helloWorldString(string msg)
    signal helloWorldLoop

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1 {
        }

        Page {
            Label {
                text: qsTr("B")
                anchors.centerIn: parent
            }
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("A")
        }
        TabButton {
            text: qsTr("B")
        }
    }

    function signalFromCpp(){
        console.log("Hello World received from Cpp")
    }
}
