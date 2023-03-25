import 'package:aplikasi_pedulilansia/pages/detailpage_ambulan.dart';
import 'package:aplikasi_pedulilansia/pages/detailpage_kelurahan.dart';
import 'package:aplikasi_pedulilansia/pages/detailpage_polisi.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class FcmPage extends StatefulWidget {
  const FcmPage({Key? key}) : super(key: key);

  @override
  State<FcmPage> createState() => _FcmPageState();
}

class _FcmPageState extends State<FcmPage> {
  bool statusSwicth = false;
  @override
  Widget build(BuildContext context) {
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
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Spacer(),
                        ),
                        Image.asset(
                          'assets/Flat2.png',
                          width: 374,
                          height: 274,
                        ),
                      ],
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
                padding: const EdgeInsets.only(left: 290, right: 24, top: 319),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Switch(
                      activeColor: Colors.white,
                      activeTrackColor: Colors.greenAccent,
                      inactiveTrackColor: Colors.redAccent,
                      inactiveThumbColor: Colors.white,
                      activeThumbImage: const AssetImage('assets/Ceklis.png'),
                      inactiveThumbImage:
                          const AssetImage('assets/alarm_off.png'),
                      value: statusSwicth,
                      onChanged: (value) {
                        setState(() {
                          statusSwicth = !statusSwicth;
                        });
                        // ignore: avoid_print
                        print(statusSwicth);
                      },
                    ),
                    Text(
                      // if (statusSwicth == true) 'ON', else 'OFF',
                      (statusSwicth == true) ? 'ON' : 'OFF',
                      style: buttononofTextStyle,
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
                child: Column(
                  children: [
                    Text(
                      'Shorcut',
                      style: shorcutTextStyle,
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
                  left: 229,
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
                            Column(
                              children: [
                                Image.asset(
                                  'assets/Location.png',
                                  width: 153,
                                  height: 122,
                                ),
                              ],
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
}
