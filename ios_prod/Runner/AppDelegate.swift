////import UIKit
////import Flutter
////import FirebaseCore
////import FirebaseMessaging
////
////
//////@UIApplicationMain
//////@objc class AppDelegate: FlutterAppDelegate {
//////  override func application(
//////    _ application: UIApplication,
//////    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
//////  ) -> Bool {
//////    FirebaseApp.configure()
//////    GeneratedPluginRegistrant.register(with: self)
//////      if #available(iOS 10.0, *) {
//////           UNUserNotificationCenter.current().delegate = self as? UNUserNotificationCenterDelegate
//////          }
//////
//////       application.registerForRemoteNotifications()
//////    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
//////  }
//////}
////@UIApplicationMain
////@objc class AppDelegate: FlutterAppDelegate {
////  override func application(
////    _ application: UIApplication,
////    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
////  ) -> Bool {
////      FirebaseApp.configure()
//////      Messaging.messaging().delegate = self
//////      Messaging.messaging().autoInitEnabled = true
////
////
////      GeneratedPluginRegistrant.register(with: self)
////      application.registerForRemoteNotifications()
////    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
////  }
//////    func application(application: UIApplication,
//////                     didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
//////      Messaging.messaging().apnsToken = deviceToken
//////    }
////
////    func application(application: UIApplication,
////                     didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
////        print("application didRegisterForRemoteNotificationsWithDeviceToken")
////        Messaging.messaging().apnsToken = deviceToken
////    }
////
////    func application(application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
////        print("application didFailToRegisterForRemoteNotificationsWithError")
////    }
////
////}
//
////
////  Copyright (c) 2016 Google Inc.
////
////  Licensed under the Apache License, Version 2.0 (the "License");
////  you may not use this file except in compliance with the License.
////  You may obtain a copy of the License at
////
////  http://www.apache.org/licenses/LICENSE-2.0
////
////  Unless required by applicable law or agreed to in writing, software
////  distributed under the License is distributed on an "AS IS" BASIS,
////  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
////  See the License for the specific language governing permissions and
////  limitations under the License.
////
//
//import UIKit
//import Flutter
////import UserNotifications
//
//import FirebaseCore
//import FirebaseMessaging
//
//@available(iOS 14.0.0, *)
//@UIApplicationMain
//@objc class AppDelegate: FlutterAppDelegate {
//
//      let gcmMessageIDKey = "gcm.message_id"
//  override func application(
//    _ application: UIApplication,
//    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
//  ) -> Bool {
//      FirebaseApp.configure()
//      Messaging.messaging().delegate = self
//      Messaging.messaging().isAutoInitEnabled = true
//
//
//      GeneratedPluginRegistrant.register(with: self)
//      application.registerForRemoteNotifications()
//    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
//  }
////@UIApplicationMain
////class AppDelegate: UIResponder, UIApplicationDelegate {
////  var window: UIWindow?
////  let gcmMessageIDKey = "gcm.message_id"
////
////  func application(_ application: UIApplication,
////                   didFinishLaunchingWithOptions launchOptions: [UIApplication
////                     .LaunchOptionsKey: Any]?) -> Bool {
////    FirebaseApp.configure()
////
////    // [START set_messaging_delegate]
////    Messaging.messaging().delegate = self
////    // [END set_messaging_delegate]
////
////    // Register for remote notifications. This shows a permission dialog on first run, to
//    // show the dialog at a more appropriate time move this registration accordingly.
//    // [START register_for_notifications]
//
////    UNUserNotificationCenter.current().delegate = self
////
////    let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
////    UNUserNotificationCenter.current().requestAuthorization(
////      options: authOptions,
//////      completionHandler: { _, _ in }
//////    )
////
////  //  application.registerForRemoteNotifications()
////                               GeneratedPluginRegistrant.register(with: self)
////                               application.registerForRemoteNotifications()
////                             return super.application(application, didFinishLaunchingWithOptions: launchOptions)
////    // [END register_for_notifications]
////
////   // return true
////  }
//
//    override func application(_ application: UIApplication,
//                   didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
//    // If you are receiving a notification message while your app is in the background,
//    // this callback will not be fired till the user taps on the notification launching the application.
//    // TODO: Handle data of notification
//
//    // With swizzling disabled you must let Messaging know about the message, for Analytics
//    // Messaging.messaging().appDidReceiveMessage(userInfo)
//
//    // Print message ID.
//    if let messageID = userInfo[gcmMessageIDKey] {
//      print("Message ID: \(messageID)")
//    }
//
//    // Print full message.
//    print(userInfo)
//  }
//
//  // [START receive_message]
//
//    override func application(_ application: UIApplication,
//                   didReceiveRemoteNotification userInfo: [AnyHashable: Any]) async
//    -> UIBackgroundFetchResult {
//    // If you are receiving a notification message while your app is in the background,
//    // this callback will not be fired till the user taps on the notification launching the application.
//    // TODO: Handle data of notification
//
//    // With swizzling disabled you must let Messaging know about the message, for Analytics
//    // Messaging.messaging().appDidReceiveMessage(userInfo)
//
//    // Print message ID.
//    if let messageID = userInfo[gcmMessageIDKey] {
//      print("Message ID: \(messageID)")
//    }
//
//    // Print full message.
//    print(userInfo)
//
//    return UIBackgroundFetchResult.newData
//  }
//
//  // [END receive_message]
//
//    override func application(_ application: UIApplication,
//                   didFailToRegisterForRemoteNotificationsWithError error: Error) {
//    print("Unable to register for remote notifications: \(error.localizedDescription)")
//  }
//
//  // This function is added here only for debugging purposes, and can be removed if swizzling is enabled.
//  // If swizzling is disabled then this function must be implemented so that the APNs token can be paired to
//  // the FCM registration token.
//    override func application(_ application: UIApplication,
//                   didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
//    print("APNs token retrieved: \(deviceToken)")
//
//    // With swizzling disabled you must set the APNs token here.
//    // Messaging.messaging().apnsToken = deviceToken
//  }
//}
//
//// [START ios_10_message_handling]
//
////@available(iOS 14.0.0, *)
////extension AppDelegate: UNUserNotificationCenterDelegate {
////  // Receive displayed notifications for iOS 10 devices.
////  func userNotificationCenter(_ center: UNUserNotificationCenter,
////                              willPresent notification: UNNotification) async
////    -> UNNotificationPresentationOptions {
////    let userInfo = notification.request.content.userInfo
////
////    // With swizzling disabled you must let Messaging know about the message, for Analytics
////    // Messaging.messaging().appDidReceiveMessage(userInfo)
////
////    // [START_EXCLUDE]
////    // Print message ID.
////    if let messageID = userInfo[gcmMessageIDKey] {
////      print("Message ID: \(messageID)")
////    }
////    // [END_EXCLUDE]
////
////    // Print full message.
////    print(userInfo)
////
////    // Change this to your preferred presentation option
////    return [[.alert, .sound]]
////  }
////
////  func userNotificationCenter(_ center: UNUserNotificationCenter,
////                              didReceive response: UNNotificationResponse) async {
////    let userInfo = response.notification.request.content.userInfo
////
////    // [START_EXCLUDE]
////    // Print message ID.
////    if let messageID = userInfo[gcmMessageIDKey] {
////      print("Message ID: \(messageID)")
////    }
////    // [END_EXCLUDE]
////
////    // With swizzling disabled you must let Messaging know about the message, for Analytics
////    // Messaging.messaging().appDidReceiveMessage(userInfo)
////
////    // Print full message.
////    print(userInfo)
////  }
////}
//
//// [END ios_10_message_handling]
//
//@available(iOS 14.0.0, *)
//extension AppDelegate: MessagingDelegate {
//  // [START refresh_token]
//  func messaging(_ messaging: Messaging, didReceiveRegistrationToken fcmToken: String?) {
//    print("Firebase registration token: \(String(describing: fcmToken))")
//
////    let dataDict: [String: String] = ["token": fcmToken ?? ""]
////    NotificationCenter.default.post(
////      name: Notification.Name("FCMToken"),
////      object: nil,
////      userInfo: dataDict
////    )
//    // TODO: If necessary send token to application server.
//    // Note: This callback is fired at each app startup and whenever a new token is generated.
//  }
//
//  // [END refresh_token]
//}

import UIKit
import Flutter
import FirebaseCore
@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
  _ application: UIApplication,
  didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      FirebaseApp.configure()
  GeneratedPluginRegistrant.register(with: self)
  if #available(iOS 10.0, *) {
    UNUserNotificationCenter.current().delegate = self as? UNUserNotificationCenterDelegate
  }
  return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    @available(iOS 10.0, *)
    override func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.alert,.sound,.badge])
    }
}
