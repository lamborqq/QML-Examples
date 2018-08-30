import QtQuick 2.11
import QtQuick.Controls 1.4 as Controls_1_4
import QtQuick.Controls 2.2
import QtQuick.Controls.Styles 1.4
import QtQuick.Window 2.3

import "../"
/**
 * @file    TitleBar.qml
 * @version 1.0
 * @brief   标题栏
 * @date    2018-08-30
 * @author  lanbery
 * @section LICENSE Copyright (c) 2018 - 2025 lanbery,NBS Chain Co.
 */
Rectangle   {
    id                                      : root;
    color                                   : Qt.rgba(58,64,85,0.9);

    //拖动
    MouseArea   {
        property real xmouse;//鼠标x,y坐标
        property real ymouse;

        anchors.fill                        : parent;
        acceptedButtons                     : Qt.LeftButton;//只处理鼠标左键事件

        drag.filterChildren                 : true;//拖动

        onPressed                           : {
            xmouse  = mouse.x;
            ymouse  = mouse.y;
        }

        onPositionChanged                   : {
            mainWindow.x = mainWindow.x + (mouse.x - xmouse);
            mainWindow.y = mainWindow.y + (mouse.y - ymouse);
        }
    }

    //主程序ico
    Image   {
        id                                  : icon;
        source                              : "qrc:/logo.ico";

        width                               : 25*dp;
        height                              : 25*dp;
        anchors {
            left                            : parent.left;
            leftMargin                      : 10*dp;
            verticalCenter                  : parent.verticalCenter;
        }
    }

    //AppName
    Label   {
        id                                  : title;
        anchors {
            left                            : icon.right
            leftMargin                      : 16*dp;
            verticalCenter                  : parent.verticalCenter;
        }
        text                                : qsTr("<font color=\"blue\">NBS 客户端 </font>");
        font    {
            family                          : "Microsoft YaHei";
            pixelSize                       : 16*dp;
            bold                            : true;
        }
    }

}
