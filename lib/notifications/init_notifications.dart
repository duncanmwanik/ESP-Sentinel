import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

import 'listen_for_notification.dart';

Future<void> initNotifications() async {
  await AwesomeNotifications().initialize(
    'resource://drawable/logo',
    [
      NotificationChannel(
        channelKey: 'basic_channel',
        channelName: 'Image Updates',
        defaultColor: Colors.lightBlueAccent,
        importance: NotificationImportance.High,
        channelDescription: 'Image Updates',
        channelShowBadge: true,
        playSound: true,
      ),
    ],
  );

  AwesomeNotifications().setListeners(onActionReceivedMethod: onActionReceivedMethod);
}
