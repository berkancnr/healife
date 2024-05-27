import 'dart:async';
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class BackgroundServiceInit {
  static final service = FlutterBackgroundService();

  static Future<void> initializeService() async {
    await service.configure(
      androidConfiguration: AndroidConfiguration(
        onStart: (service) => onStart(service),
        autoStart: true,
        isForegroundMode: true,
      ),
      iosConfiguration: IosConfiguration(
        autoStart: true,
        onForeground: onStart,
        onBackground: onIosBackground,
      ),
    );
  }

  @pragma('vm:entry-point')
  static onStart(ServiceInstance service) async {
    DartPluginRegistrant.ensureInitialized();

    service.on('stopService').listen((event) {
      service.stopSelf();
    });

    service.on('uploadVog').listen((event) async {
      Firebase.initializeApp();
      await Future.delayed(const Duration(milliseconds: 5000));
      await FirebaseFirestore.instance.collection("deneme").doc("yoo").set({"yee": "yoo"});
      await Future.delayed(const Duration(milliseconds: 5000));
    });



    /*  Timer.periodic(const Duration(seconds: 10), (timer) async {
      
      service.invoke(
        'update',
        {
          "current_date": DateTime.now().toIso8601String(),
        },
      );
    }); */

    print('FLUTTER BACKGROUND SERVICE: ${DateTime.now()}');
  }

  @pragma('vm:entry-point')
  static FutureOr<bool> onIosBackground(ServiceInstance service) async {
    WidgetsFlutterBinding.ensureInitialized();
    DartPluginRegistrant.ensureInitialized();

    service.on('uploadVog').listen((event) async {
      Firebase.initializeApp();
      await Future.delayed(const Duration(milliseconds: 5000));
      await FirebaseFirestore.instance.collection("deneme").doc("yee").set({"yoo": "yee"});
      await Future.delayed(const Duration(milliseconds: 5000));
    });

    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.reload();
    final log = preferences.getStringList('log') ?? <String>[];
    log.add(DateTime.now().toIso8601String());
    await preferences.setStringList('log', log);
    print('FLUTTER BACKGROUND SERVICE: ${DateTime.now()}');

    return true;
  }
}
