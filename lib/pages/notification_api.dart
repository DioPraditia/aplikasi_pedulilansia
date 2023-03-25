import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// ignore: unused_import
import 'package:rxdart/rxdart.dart';
// ignore: unused_import
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
// ignore: unused_import
import 'package:flutter_native_timezone/flutter_native_timezone.dart';

class NotificationApi {
  static final _notifications = FlutterLocalNotificationsPlugin();
  static final onNotifications = BehaviorSubject<String?>();

  static Future showNotification({
    int id = 0,
    String? title,
    String? body,
  }) async =>
      _notifications.show(
        id,
        title,
        body,
        await _notificationDetails(),
      );

  static showScheduledNotification({
    int id = 0,
     title = 'Peduli Lansia',
     body = 'Orang tua mu sedang membutuhkan pertolongan!!',
    required DateTime scheduledDate,
  }) async =>
      _notifications.zonedSchedule(
        id,
        title,
        body,
        tz.TZDateTime.from(scheduledDate, tz.local),
        //_scheduleDaily(const Time(8), days: [DateTime.monday, DateTime.tuesday]),
        await _notificationDetails(),
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
       // matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime,
      );

  static _notificationDetails() async {
    return const NotificationDetails(
        android: AndroidNotificationDetails(
      'channelId',
      'channelName',
      'channelDescription',
      importance: Importance.max,
    ));
  }

  // ignore: unused_element
  static tz.TZDateTime _scheduleDaily(Time time, {List<int>? days}) {
    final now = tz.TZDateTime.now(tz.local);
    final scheduledDate = tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day,
      time.hour,
      time.minute,
      time.second,
    );

    return scheduledDate.isBefore(now)
    ? scheduledDate.add(const Duration(days: 1)) : scheduledDate; 
  }

  // ignore: unused_element
  static tz.TZDateTime _scheduleWeekly(Time time, {List<int>? days}) {
    tz.TZDateTime scheduledDate = _scheduleDaily(time);

    while(!days!.contains(scheduledDate.weekday)) {
      scheduledDate = scheduledDate.add(const Duration(days: 1));
    }
    return scheduledDate;
  }

  static void init({bool initScheduled = false}) async {
    // ignore: prefer_const_constructors
    final android = AndroidInitializationSettings('@mipmap/ic_launcher');
    // ignore: prefer_const_constructors
    final iOS = IOSInitializationSettings();
    final settings = InitializationSettings(android: android, iOS: iOS);

    await _notifications.initialize(
      settings,
      onSelectNotification: (payload) async {
        
      },
    );
    if (initScheduled) {
    tz.initializeTimeZones();
    final locationName = await FlutterNativeTimezone.getLocalTimezone();
    tz.setLocalLocation(tz.getLocation(locationName));
    
  }
  } 
}

