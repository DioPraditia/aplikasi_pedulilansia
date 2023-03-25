// ignore_for_file: non_constant_identifier_names
import 'package:aplikasi_pedulilansia/main.dart';
import 'package:aplikasi_pedulilansia/pages/detailpage_ambulan.dart';
import 'package:aplikasi_pedulilansia/pages/detailpage_kelurahan.dart';
import 'package:aplikasi_pedulilansia/pages/detailpage_polisi.dart';
import 'package:aplikasi_pedulilansia/pages/form_gps.dart';
import 'package:aplikasi_pedulilansia/pages/notification_api.dart';
import 'package:aplikasi_pedulilansia/theme.dart';
// ignore: unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// ignore: unused_import
import 'detailoption_rt011.dart';
// ignore: unused_import
import 'package:master_detail_scaffold/master_detail_scaffold.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: deprecated_member_use
  final database = FirebaseDatabase.instance.reference();
  // ignore: prefer_final_fields, unused_field
  String _displayText = 'Aplikasi IoT Emergency';
  // ignore: deprecated_member_use, unused_field
  final _database = FirebaseDatabase.instance.reference();

  @override
  void initState() {
    // mendengarkan notifikasi
    // mendapatkan token
    // ignore: avoid_print,
    FirebaseMessaging.instance.getToken().then((Token) => print(Token));

    //Ketika notifikasi di klik dan keadaannya on Terminated
    FirebaseMessaging.instance.getInitialMessage().then((message) {
      if (message != null) {
        // ignore: avoid_print
        //print(message.data);
        var _routeName = message.data['route'];

        Navigator.of(context).pushNamed(_routeName);
      }
    });

    //Ketika notifikasi di klik dan keadaannya on Background atau ketika tidak mati total
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      // ignore: unnecessary_null_comparison
      if (message != null) {
        // ignore: avoid_print
        //print(message.data);
        var _routeName = message.data['route'];

        Navigator.of(context).pushNamed(_routeName);
      }
    });

    //Ketika notifikasi di klik dan keadaannya on Foreground
    FirebaseMessaging.onMessage.listen((message) {
      // ignore: unnecessary_null_comparison
      if (message != null) {
        // ada notifikasi yang masuk
        // ignore: avoid_print
        print(message.data);
      }
    });

    //  unused_local_variable, non_constant_identifier_names
    // ignore: deprecated_member_use, unused_local_variable
    FirebaseDatabase SwitchOnOff = FirebaseDatabase(
        databaseURL:
            "https://aplikasi-peduli-lansiaku-default-rtdb.firebaseio.com/");

    super.initState();
    //_activateListeners();
    NotificationApi.init(initScheduled: true);
    listenNotifications();

    // ignore: unused_local_variable
    var initialzationSettingsAndroid =
        const AndroidInitializationSettings('@mipmap/ic_launcher');

    // ignore: unused_local_variable
    var initialzationSettings =
        InitializationSettings(android: initialzationSettingsAndroid);

    flutterLocalNotificationsPlugin.initialize(initialzationSettings);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              channel.description,
              // ignore: todo
              // TODO add a proper drawable resource to android, for now using
              //      one that already exists in example app.
              icon: 'launch_background',
            ),
          ),
        );
      }
    });
  }

  //void _activateListeners() {
  //  _database.child('SwitchOnOff/StatusAlat/status').onValue.listen((event) {
  // ignore: unused_local_variable
  //    final Object? status = event.snapshot.value;
  //    setState(() {
  //      _displayText = 'Alat Emergency : $status';
  //    });
  //  });
  // }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final SwitchOnOffRef = database.child('/SwitchOnOff');
    // ignore: unused_local_variable
    final notifsensor = database.child('notifsensor');

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/Background.png',
                      width: 450,
                      height: 450,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 2,
                            left: 25,
                          ),
                          child: Text(
                            'Ups sepertinya\n belum ada panggilan\n darurat untuk saat ini',
                            style: heading1onTextStyle,
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 5),
                      child: Spacer(),
                    ),
                    Image.asset(
                      'assets/OkayIllustration.png',
                      width: 208,
                      height: 334,
                    ),
                  ],
                ),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 274,
                    bottom: 316,
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/Bg1.png',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  top: 315,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Peduli Lansia',
                        style: heading2TextStyle,
                      ),
                    ),
                    const SizedBox(
                      height: 7.8,
                    ),
                    Text(
                      'Kalo bukan kita siapa lagi ?',
                      style: subheading2TextStyle,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 159,
                  right: 159,
                  top: 280,
                ),
                child: Divider(
                  thickness: 5,
                  color: Color(0XFFFFFFFF),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 235, right: 24, top: 319),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        backgroundColor: redaccentColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                      onPressed: () async {
                        try {
                          await SwitchOnOffRef.update({
                            'status': "false",
                            'StatusAlat/status': "Mati",
                          });
                          final snackbar = SnackBar(
                            content: Text(
                              'Aplikasi Mode OFF',
                              style: heading2TextStyle,
                            ),
                            backgroundColor: Colors.redAccent,
                          );
                          ScaffoldMessenger.of(context)
                            ..removeCurrentSnackBar()
                            ..showSnackBar(snackbar);

                          // ignore: avoid_print
                          print('Status Mati');
                          // ignore: avoid_print
                          print('Alat Tidak Aktif');
                        } catch (e) {
                          // ignore: avoid_print
                          print('You got an error! $e');
                        }
                      },
                      child: const Text('OFF'),
                    ),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        backgroundColor: greenColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                      onPressed: () async {
                        NotificationApi.showScheduledNotification(
                          scheduledDate: DateTime.now().add(
                            const Duration(seconds: 15),
                          ),
                        );
                        final snackbar = SnackBar(
                          content: Text(
                            'Aplikasi Mode ON',
                            style: heading2TextStyle,
                          ),
                          backgroundColor: Colors.green,
                        );
                        ScaffoldMessenger.of(context)
                          ..removeCurrentSnackBar()
                          ..showSnackBar(snackbar);
                        try {
                          await SwitchOnOffRef.update({
                            'status': "true",
                            'StatusAlat/status': "Hidup",
                          });

                          // ignore: avoid_print
                          print('Status Hidup');
                          // ignore: avoid_print
                          print('Alat Aktif');
                        } catch (e) {
                          // ignore: avoid_print
                          print('You got an error! $e');
                        }
                      },
                      child: const Text('ON'),
                    ),
                  ],
                ),
              ),
              // ignore: sized_box_for_whitespace
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 397,
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/Bg2.png',
                        width: 800,
                        height: 410,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  top: 422.29,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Shortcut',
                          style: shorcutTextStyle,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 140.5),
                      child: Column(
                        children: [
                          Text(
                            _displayText,
                            style: statusalatTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 470,
                  left: 24,
                  right: 198,
                ),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailPageAmbulans(),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'assets/Ambulans.png',
                              width: 153,
                              height: 122,
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const DetailPagePolisi(),
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/Polisi.png',
                                    width: 153,
                                    height: 122,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 215,
                  right: 24,
                  top: 470,
                ),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailPageKelurahan(),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'assets/Kelurahan.png',
                              width: 153,
                              height: 122,
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const GpsPage(),
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/Location.png',
                                    width: 153,
                                    height: 122,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void listenNotifications() =>
      NotificationApi.onNotifications.stream.listen(onClickedNotification);

  void onClickedNotification(String? payload) =>
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const HomePage(),
      ));
}
