import 'package:aplikasi_pedulilansia/pages/home_page.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:aplikasi_pedulilansia/theme.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPagePolisi extends StatefulWidget {
  const DetailPagePolisi({Key? key}) : super(key: key);

  @override
  State<DetailPagePolisi> createState() => _DetailPagePolisiState();
}

class _DetailPagePolisiState extends State<DetailPagePolisi> {
  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
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
              'assets/Gb_polisi1.png',
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
                          right: 144,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Polisi',
                              style: judulTextStyle,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Selalu Siap Melindungi dan Melayani Anda',
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
                          'Informasi Prestasi',
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
                                  'assets/Ic_narkoba.png',
                                  width: 47,
                                  height: 47,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: 'Memberantas\n',
                                    style: alatTextStyle,
                                    children: [
                                      TextSpan(
                                        text: 'Narkoba',
                                        style: totalTextStyle,
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
                                  'assets/mafia.png',
                                  width: 47,
                                  height: 47,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: 'Memberantas\n',
                                    style: alatTextStyle,
                                    children: [
                                      TextSpan(
                                        text: 'Mafia',
                                        style: totalTextStyle,
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
                                  'assets/penjahat.png',
                                  width: 47,
                                  height: 47,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: 'Memberantas\n',
                                    style: alatTextStyle,
                                    children: [
                                      TextSpan(
                                        text: 'Kriminal',
                                        style: totalTextStyle,
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
                              'assets/Gb_polisi2.png',
                              width: 110,
                              height: 100,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/Gb_polisi3.png',
                              width: 110,
                              height: 100,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/Gb_polisi4.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/Gb_polisi5.png',
                              width: 110,
                              height: 100,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/Gb_polisi6.png',
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
                              'Markas besar	Jl. Trunojoyo No. 3,\nKebayoran Baru, Jakarta Selatan',
                              style: subJudulTextStyle,
                            ),
                            InkWell(
                              onTap: () {
                                launchUrl(
                                  'https://goo.gl/maps/6vCEv831dcUeBB1A7',
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
                      launchUrl('tel:110');
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
