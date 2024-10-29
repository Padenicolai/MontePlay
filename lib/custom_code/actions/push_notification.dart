// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_messaging/firebase_messaging.dart';

Future pushNotification() async {
  // Add your function code here!
  NotificationSettings settings =
      await FirebaseMessaging.instance.requestPermission(
    alert: true,
    badge: true,
    sound: true,
    provisional: false,
  );

  if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    print('Usuário concedeu permissão para notificações push.');
    // Obter token do FCM
    String? token = await FirebaseMessaging.instance.getToken();
    if (token != null) {
      // Inscrever no tópico
      await FirebaseMessaging.instance.subscribeToTopic("all");
      // Retornar token se tudo ocorrer bem
      FFAppState().token = token;
    }
  } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
    print('Usuário concedeu permissão provisória para notificações push.');
  } else {
    print('Usuário não concedeu permissão para notificações push.');
  }
}
