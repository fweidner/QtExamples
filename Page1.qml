import QtQuick 2.7

Page1Form {

    sig_helloWorld.onClicked: {
        console.log("Button Pressed. Default");
        helloWorld();
    }

    sig_helloWorldString.onClicked: {
        console.log("Button Pressed. String");
        helloWorldString("Hello World QML > CPP");
    }


    sig_helloWorldFromCpp.onClicked: {
        console.log("ButtonPressed. Loop");
        helloWorldLoop();
    }



}
