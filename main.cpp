#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QQmlContext>

#include <signalslottester.h>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    SignalSlotTester ss;

    engine.rootContext()->setContextProperty("_ss", &ss);

    QObject *item = engine.rootObjects().first();

    //QML to CPP
    QObject::connect(item, SIGNAL(helloWorldString(QString)), &ss, SLOT(slotHelloWorld(QString)));
    QObject::connect(item, SIGNAL(helloWorld()), &ss, SLOT(slotHelloWorld()));
    QObject::connect(item, SIGNAL(helloWorldLoop()), &ss, SLOT(slotHelloWorldLoop()));

    //CPP to QML
    QObject::connect(&ss, SIGNAL(signalHelloWorld()), item, SLOT(signalFromCpp()));

    return app.exec();
}
