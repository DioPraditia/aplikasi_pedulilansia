import 'package:aplikasi_pedulilansia/pages/home_page.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
// ignore: unused_import
import 'package:aplikasi_pedulilansia/theme.dart';
// ignore: unused_import
import 'package:url_launcher/url_launcher.dart';

class OptionRt03 extends StatefulWidget {
  const OptionRt03({Key? key}) : super(key: key);

  @override
  State<OptionRt03> createState() => _OptionRt03State();
}

class _OptionRt03State extends State<OptionRt03> {
  @override
  // ignore: override_on_non_overriding_member
  launchUrl(String url) async {
    // ignore: deprecated_member_use
    if (!await canLaunch(url)) {
      // ignore: deprecated_member_use
      launch(url);
    } else {
      throw (url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/Gb_kelurahan1.png',
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
                              'Kelurahan Ulujami',
                              style: judulTextStyle,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Layanan Masyarakat',
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
                                  'assets/komputer.png',
                                  width: 47,
                                  height: 47,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: '10 ',
                                    style: totalTextStyle,
                                    children: [
                                      TextSpan(
                                        text: 'Komputer',
                                        style: alatTextStyle,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 9, left: 34),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/ac.png',
                                  width: 47,
                                  height: 47,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: '10 ',
                                    style: totalTextStyle,
                                    children: [
                                      TextSpan(
                                        text: 'AC',
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
                                  'assets/kursi.png',
                                  width: 47,
                                  height: 47,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: '20 ',
                                    style: totalTextStyle,
                                    children: [
                                      TextSpan(
                                        text: 'Kursi layanan',
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
                              'assets/Gb_kelurahan2.png',
                              width: 110,
                              height: 100,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/Gb_kelurahan3.png',
                              width: 110,
                              height: 100,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/Gb_kelurahan4.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/Gb_kelurahan5.png',
                              width: 110,
                              height: 100,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/Gb_kelurahan6.png',
                              width: 110,
                              height: 100,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 46,
                ),
                Container(
                  height: 58,
                  margin: EdgeInsets.symmetric(
                    horizontal: edge,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    border: Border.all(
                      color: darkpurpleColor,
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Text(
                        'RW 05/RT03',
                        style: kategoriRtTextStyle,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 39,
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
                      ),
                    ),
                    onPressed: () {
                      launchUrl('tel:+62815123456767');
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
