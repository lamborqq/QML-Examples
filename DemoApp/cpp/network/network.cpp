/**
 * @file    QML-Examples
 * @version 1.0
 * @brief
 * @date    2018-08-30
 * @author  lanbery
 * @section LICENSE Copyright (c) 2018 - 2025 lanbery,NBS Chain Co.
 */
#include "network.h"
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QNetworkRequest>
#include <QEventLoop>
#include <QDebug>
#include <QUrlQuery>

/**
 * @brief Network::Network
 * @param parent
 */
Network::Network(QObject *parent) : QObject(parent)
{
    networkManager = new QNetworkAccessManager(this);
    QObject::connect(networkManager,SIGNAL(finished(QNetworkReply*)),this,SLOT(slot_requestFish(QNetworkReply*)));
}

/**
 * @brief Network::~Network
 * 空
 */
Network::~Network(){

}

/**
 * @brief Network::getUrlResource
 * @param url
 * @param params
 */
void Network::getUrlResource(QString url, QString params){
    QNetworkRequest req;

    req.setRawHeader("Content-Type","application/x-www-from-urlencoded");
    req.setRawHeader("User-Agent","Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.157 Safari/537.36");
    req.setUrl(url);
    QByteArray dataArray;
    dataArray.append("params="+params);
    networkManager->post(req,dataArray);
}

/**
 * @brief Network::slot_requestFish
 * @param reply
 */
void Network::slot_requestFish(QNetworkReply* reply){
    QByteArray bytes = reply->readAll();
    reply->deleteLater();
    emit sig_requestFish(bytes);
}
