#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>


int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    //注册
    //qmlRegisterType<Settings>("Settings",1,0,"Settings");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/qml/main.qml")));
//    if (engine.rootObjects().isEmpty())
//        return -1;

    return app.exec();
}
