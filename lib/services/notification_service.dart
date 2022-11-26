// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:rxdart/subjects.dart';
// import 'package:timezone/timezone.dart' as tz;
// import 'package:timezone/data/latest.dart' as tz;

// class NotificationService {
//   NotificationService();

//   final _notificationService = FlutterLocalNotificationsPlugin();

//   Future<void> initialize() async {
//     const AndroidInitializationSettings androidInitializationSettings =
//         AndroidInitializationSettings('@drawable/saltlogo.png');

//     DarwinInitializationSettings darwinInitializationSettings =
//         DarwinInitializationSettings(
//       requestAlertPermission: true,
//       requestBadgePermission: true,
//       requestSoundPermission: true,
//       onDidReceiveLocalNotification: onDidReceiveNotificationService,
//     );

//     final InitializationSettings settings = InitializationSettings(
//       android: androidInitializationSettings,
//       iOS: darwinInitializationSettings,
//     );

//     await _notificationService.initialize(
//       settings,
//       onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
//     );
//   }

//   Future<NotificationDetails> _notificationDetails() async {
//     const AndroidNotificationDetails androidNotificationDetails =
//         AndroidNotificationDetails('channel_id', 'channel_name',
//             channelDescription: 'description',
//             importance: Importance.max,
//             priority: Priority.max,
//             playSound: true);

//     const DarwinNotificationDetails darwinNotificationDetails =
//         DarwinNotificationDetails();

//     return const NotificationDetails(
//       android: androidNotificationDetails,
//       iOS: darwinNotificationDetails,
//     );
//   }

//   Future<void> showNotification({
//     required int id,
//     required String title,
//     required String body,
//   }) async {
//     final details = await _notificationDetails();
//     await _notificationService.show(id, title, body, details);
//   }

//   void onDidReceiveNotificationService(
//       int id, String? title, String? body, String? payload) {
//     print('id $id');
//   }

//   void onDidReceiveNotificationResponse(NotificationResponse payload) {
//     print('payload $payload');
//   }
// }
