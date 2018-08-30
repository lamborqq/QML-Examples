import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Window 2.3

/**
 * @file    QML-Examples
 * @version 1.0
 * @brief   App 主窗口
 * @date    2018-08-30
 * @author  lanbery
 * @section LICENSE Copyright (c) 2018 - 2025 lanbery,NBS Chain Co.
 */
Window {
    id                                              : window
    visible                                         : true
    width                                           : 840 //h=w*0.618
    height                                          : 520
    title                                           : qsTr("客户端")


    //
    property real           dpScale                 : 1.5;//不同分辨率窗口伸缩比例
    readonly property real  dp                      : value;
}
