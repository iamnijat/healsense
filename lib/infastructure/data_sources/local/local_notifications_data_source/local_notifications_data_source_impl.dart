import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:healsense/infastructure/core/extensions/log.dart';
import '../../../core/utils/timezone_util.dart';
import 'local_notifications_data_source.dart';

class LocalNotificationsDataSourceImpl implements LocalNotificationsDataSource {
  late FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;
  late AndroidInitializationSettings _androidInitializationSettings;
  late DarwinInitializationSettings _darwinInitializationSettings;
  late InitializationSettings _initializationSettings;

  @override
  Future<void> initializeNotification() async {
    _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    _androidInitializationSettings = const AndroidInitializationSettings(
      'transparent_logo',
    );

    _darwinInitializationSettings = const DarwinInitializationSettings(
      requestSoundPermission: true,
      requestBadgePermission: true,
      requestAlertPermission: true,
      onDidReceiveLocalNotification: _onDidReceiveLocalNotification,
    );

    _initializationSettings = InitializationSettings(
      android: _androidInitializationSettings,
      iOS: _darwinInitializationSettings,
    );

    await _flutterLocalNotificationsPlugin.initialize(
      _initializationSettings,
    );
  }

  @override
  Future<void> scheduleNotification({
    required int id,
    required DateTime dateTime,
    String? title,
    String? amount,
  }) async {
    AndroidNotificationDetails androidNotificationDetails =
        const AndroidNotificationDetails(
      "channelId",
      "channelName",
      importance: Importance.max,
      priority: Priority.high,
    );

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
    );

    final body = "Take $amount. You shouldn't miss it";

    await _flutterLocalNotificationsPlugin.zonedSchedule(
      id,
      title,
      body,
      TimezoneUtil.convertTimezone(dateTime),
      matchDateTimeComponents: DateTimeComponents.time,
      notificationDetails,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidAllowWhileIdle: true,
    );
  }

  @override
  void cancelNotification(int id) =>
      _flutterLocalNotificationsPlugin.cancelAll();

  @override
  void cancelAllNotifications() => _flutterLocalNotificationsPlugin.cancelAll();

  static void _onDidReceiveLocalNotification(
      int id, String? title, String? body, String? payload) {
    'id $id'.log();
  }
}
