#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QScreen>
#include <QObject>
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
    //我们一定要通过创建对象来定义一个我们自定义的object
    qmlRegisterSingletonInstance("MyObj",1,0,"MyObject",MyQObject::getInstence());


    const QUrl url(u"qrc:/QML_Study/main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    //    engine 加载完成后 load后
    auto list =  engine.rootObjects();
    //    auto objName = list.first()->objectName();
    //    auto buttonObj = list.first()->findChild<QObject *>("mybutton");
    //    qDebug() << buttonObj;

    auto window = list.first();
    QObject::connect(window,SIGNAL(qmlSig(int, QString)),
                     MyQObject::getInstence(),SLOT(cppSlot(int,QString)));


    QObject::connect(MyQObject::getInstence(),SIGNAL(cppSig(QVariant,QVariant)),
                     window, SLOT(qmlSlot(QVariant,QVariant)));
    return app.exec();
}
