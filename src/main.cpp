#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QScreen>
#include "myqobject.h"
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);



    QQmlApplicationEngine engine;
    //全局对象  上下文对象
    QQmlContext* context = engine.rootContext();
    QScreen* screen = QGuiApplication::primaryScreen();
    QRect rect = screen->virtualGeometry();
    //注册的上下文对象 他是作用于全局
    context->setContextProperty("SCREEN_WIDTH", 800);
//    context->setContextProperty("MyQObject", MyQObject::getInstence());
    qmlRegisterType<MyQObject>("MyObj",1,0,"MyQObject");

    const QUrl url(u"qrc:/QML_Study/main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
