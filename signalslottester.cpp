#include "signalslottester.h"
#include <QDebug>

SignalSlotTester::SignalSlotTester(QObject *parent) : QObject(parent)
{

}

void SignalSlotTester::slotHelloWorld()
{
    qDebug() << "hello world from cpp";
}

void SignalSlotTester::slotHelloWorld(QString _str)
{
    qDebug() << _str;
}

void SignalSlotTester::slotHelloWorldLoop()
{
    qDebug() << "Hello World Loop Cpp";
    emit signalHelloWorld();
}
