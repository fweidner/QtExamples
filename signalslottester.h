#ifndef SIGNALSLOTTESTER_H
#define SIGNALSLOTTESTER_H

#include <QObject>

class SignalSlotTester : public QObject
{
    Q_OBJECT
public:
    explicit SignalSlotTester(QObject *parent = 0);

signals:
    void signalHelloWorld();

public slots:
    void slotHelloWorld();
    void slotHelloWorld(QString _str);
    void slotHelloWorldLoop();
};

#endif // SIGNALSLOTTESTER_H
