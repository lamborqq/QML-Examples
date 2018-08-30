import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Window 2.2

import "./TitleBar"

/**
 * @file    QML-Examples
 * @version 1.0
 * @brief   App 主窗口
 * @date    2018-08-30
 * @author  lanbery
 * @section LICENSE Copyright (c) 2018 - 2025 lanbery,NBS Chain Co.
 */
Window {
    id                                              : mainWindow;
    visible                                         : true;
   // title                                           : qsTr("客户端");


    //
    property real           dpScale                 : 1.5;//不同分辨率窗口伸缩比例
    readonly property real  dp                      : Math.max(Screen.pixelDensity*25.4/160*dpScale);
    color                                           : Qt.rgba(58,64,85,1);//"white"
    minimumWidth                                    : 840;
    minimumHeight                                   : 520;
    width                                           : 1000*dp; //h=w*0.618
    height                                          : 618*dp;
    flags                                           : Qt.FramelessWindowHint | Qt.Window;

    //增加字体库
    FontLoader  {
        id                                          : icoFont;
        source                                      : "../font/fontawesome-webfont.ttf"
    }

    /**********************************************************
      Main View Begin
    ***********************************************************/
    //标题栏
    TitleBar    {
        id                                          : titleBar;
        width                                       : parent.width - 2*dp;
        height                                      : 45*dp;
        anchors.left                                : parent.left;
        anchors.leftMargin                          : 1*dp;
        anchors.top                                 : parent.top;
        anchors.topMargin                           : 1*dp;
    }


}
