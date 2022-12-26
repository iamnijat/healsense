abstract class LocalNotificationsDataSource {
  Future<void> scheduleNotification({
    required int id,
    required DateTime dateTime,
    String? title,
    String? amount,
  });

  Future<void> initializeNotification();

  void cancelNotification(int id);

  void cancelAllNotifications();
}
