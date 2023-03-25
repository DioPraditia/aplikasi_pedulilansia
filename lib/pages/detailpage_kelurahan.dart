// ignore: unused_import
import 'package:aplikasi_pedulilansia/pages/home_page.dart';
// ignore: unused_import
import 'package:aplikasi_pedulilansia/pages/option_rt.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_pedulilansia/theme.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
// ignore: unused_import
import 'package:dropdown_search/dropdown_search.dart';

class DetailPageKelurahan extends StatefulWidget {
  const DetailPageKelurahan({Key? key}) : super(key: key);

  @override
  State<DetailPageKelurahan> createState() => _DetailPageKelurahanState();
}

class _DetailPageKelurahanState extends State<DetailPageKelurahan> {
  List<String> data = [
    "RW 01",
    "RW 02",
    "RW 03",
    "RW 04",
    "RW 05",
  ];
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: DropdownSearch<String>(
                    mode: Mode.MENU,
                    showClearButton: true,
                    showSelectedItems: true,
                    items: data,
                    dropdownSearchDecoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      labelText: "Pilih Kategori RW",
                      hintText: "Pilih Kategori RW Dalam Menu",
                    ),
                    popupItemDisabled: (String s) => s.startsWith('I'),
                    onChanged: print,
                    selectedItem: "Pilih RW",
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OptionPageRt(),
                        ),
                      );
                    },
                    child: Text(
                      'Oke',
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
