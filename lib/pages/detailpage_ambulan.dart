import 'package:aplikasi_pedulilansia/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_pedulilansia/theme.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPageAmbulans extends StatefulWidget {
  const DetailPageAmbulans({Key? key}) : super(key: key);

  @override
  State<DetailPageAmbulans> createState() => _DetailPageAmbulansState();
}

class _DetailPageAmbulansState extends State<DetailPageAmbulans> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_element
    launcUrl(String url) async {
      // ignore: deprecated_member_use
      if (!await canLaunch(url)) {
        // ignore: deprecated_member_use
        launch(url);
      } else {
        throw (url);
      }
    }

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/picture1.png',
              width: MediaQuery.of(context).size.width,
              height: 347,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                const SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 37,
                      ),
                      //NOTES: TITLE
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                          right: 244,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ambulans',
                              style: judulTextStyle,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Layanan Darurat',
                              style: subjudulTextStyle,
                            ),
                          ],
                        ),
                      ),
                      //NOTE: MAIN FACILITES
                      const SizedBox(
                        height: 34,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                          right: 244,
                        ),
                        child: Text(
                          'Main Facilities',
                          style: mainfacilitiesTextStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 24,
                            ),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/oksigen.png',
                                  width: 47,
                                  height: 47,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: '2',
                                    style: totalTextStyle,
                                    children: [
                                      TextSpan(
                                        text: 'Oksigen',
                                        style: alatTextStyle,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 9),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/papan.png',
                                  width: 47,
                                  height: 47,
                                ),
                                const SizedBox(
                                  height: 14,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: '1',
                                    style: totalTextStyle,
                                    children: [
                                      TextSpan(
                                        text: 'Tandu',
                                        style: alatTextStyle,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/ranjang.png',
                                  width: 47,
                                  height: 47,
                                ),
                                const SizedBox(
                                  height: 14,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: '1',
                                    style: totalTextStyle,
                                    children: [
                                      TextSpan(
                                        text: 'Brankar',
                                        style: alatTextStyle,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // NOTE : PHOTO
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                        ),
                        child: Text(
                          'Photos',
                          style: mainfacilitiesTextStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      // ignore: sized_box_for_whitespace
                      Container(
                        height: 100,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            const SizedBox(
                              width: 24,
                            ),
                            Image.asset(
                              'assets/picture2.png',
                              width: 110,
                              height: 100,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/picture3.png',
                              width: 110,
                              height: 100,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/picture4.png',
                              width: 110,
                              height: 100,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset('assets/picture5.png',
                                width: 110, height: 100, fit: BoxFit.fill),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/picture6.png',
                              width: 110,
                              height: 100,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      //NOTE LOCATION
                      Padding(
                        padding: EdgeInsets.only(
                          left: edge,
                        ),
                        child: Text(
                          'Location',
                          style: mainfacilitiesTextStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Jl. Medan Merdeka Barat No.9, RT.2/RW.3,\nKecamatan Gambir, Jakarta Pusat,\nDKI Jakarta 10110',
                              style: subJudulTextStyle,
                            ),
                            InkWell(
                              onTap: () {
                                launcUrl(
                                  'https://goo.gl/maps/zTdFnk9wnakxmm3F7',
                                );
                              },
                              child: Image.asset(
                                'assets/btn_map.png',
                                width: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 56,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: edge,
                  ),
                  height: 58,
                  width: MediaQuery.of(context).size.width - (2 * edge),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: darkpurpleColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        )),
                    onPressed: () {
                      launcUrl('tel:112');
                    },
                    child: Text(
                      'Hubungi',
                      style: hubungiTextStyle,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical: 30,
              ),
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/btn_back.png',
                        width: 40,
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
