#ifndef NETWORK_H
#define NETWORK_H
/**
 * @file    QML-Examples
 * @version 1.0
 * @brief   网络
 * @date    2018-08-30
 * @author  lanbery
 * @section LICENSE Copyright (c) 2018 - 2025 lanbery,NBS Chain Co.
 */
#include <QObject>
#include <QVariant>

class QNetworkReply;
class QNetworkAccessManager;


class Network : public QObject
{
    Q_OBJECT
public:
    explicit Network(QObject *parent = 0);
    ~Network();

    Q_INVOKABLE void getUrlResource(QString url,QString params);

signals:
    void sig_requestFish(QVariant bytes);


public slots:
    void slot_requestFish(QNetworkReply*);

private:
    QNetworkAccessManager *networkManager;
};
#endif // NETWORK_H
