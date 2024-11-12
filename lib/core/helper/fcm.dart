// import 'dart:developer';

// import 'package:eslamsaad/core/constant/constance.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';

// class Fcm {
//   static FirebaseMessaging messaging = FirebaseMessaging.instance;

//   static Future<void> handleFcm() async {
//     Constant.fcmToken = await messaging.getToken();
//     log("device Token: ${Constant.fcmToken}");
//     NotificationSettings settings = await messaging.requestPermission(
//       alert: true,
//       announcement: false,
//       badge: true,
//       carPlay: false,
//       criticalAlert: false,
//       provisional: false,
//       sound: true,
//     );

//     log('User granted permission: ${settings.authorizationStatus}');
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       log('Got a message whilst in the foreground!');

//       log("Message ID ${message.messageId}");

//       log('Message data: ${message.data}');

//       log('Message data: ${message.data["title"]}');

//       if (message.notification != null) {
//         // NotificationService.showNotification(
//         //   title: message.notification!.title!,
//         //   body: message.notification!.body!,
//         // );
//         log('Message also contained a notification: ${message.notification}');
//       }
//     });
//   }
// }
