#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QScreen>
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);



    QQmlApplicationEngine engine;
    //全局对象  上下文对象
    QQmlContext* context = engine.rootContext();
    QScreen* screen = QGuiApplication::primaryScreen();
    QRect rect = screen->virtualGeometry();
    context->setContextProperty("SCREEN_WIDTH", 800);



    const QUrl url(u"qrc:/QML_Study/main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
