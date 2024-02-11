import 'package:awesome_notifications/awesome_notifications.dart';

Future<void> createNotification(String title, String body, Map<String, String> data) async {
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: 0,
      channelKey: 'basic_channel',
      title: title,
      body: body,
      payload: data,
      notificationLayout: NotificationLayout.BigText,
      wakeUpScreen: true,
    ),
    actionButtons: [
      NotificationActionButton(
        key: 'view_details',
        label: 'View Details',
      ),
    ],
  );
}
