import 'package:aplikasi_pedulilansia/pages/detailoption_rt01.dart';
import 'package:aplikasi_pedulilansia/pages/detailoption_rt010.dart';
import 'package:aplikasi_pedulilansia/pages/detailoption_rt011.dart';
import 'package:aplikasi_pedulilansia/pages/detailoption_rt017.dart';
import 'package:aplikasi_pedulilansia/pages/detailoption_rt02.dart';
import 'package:aplikasi_pedulilansia/pages/detailoption_rt03.dart';
import 'package:aplikasi_pedulilansia/pages/detailoption_rt04.dart';
import 'package:aplikasi_pedulilansia/pages/detailoption_rt05.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
// ignore: unused_import
import 'package:aplikasi_pedulilansia/theme.dart';

class OptionPageRt extends StatefulWidget {
  const OptionPageRt({Key? key}) : super(key: key);

  @override
  State<OptionPageRt> createState() => _OptionPageRtState();
}

class _OptionPageRtState extends State<OptionPageRt> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    Widget option(int index, String title) {
      return GestureDetector(
        onTap: () {
          setState(
            () {
              selectedIndex = index;
            },
          );
        },
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: edge,
          ),
          height: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: selectedIndex == index
                  ? const Color(0XFFA366BC)
                  : const Color(0XFF7A7E86),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 254, left: 23, top: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    selectedIndex == index
                        ? Image.asset(
                            'assets/ButtonOption.png',
                            width: 20,
                            height: 20,
                          )
                        : Image.asset(
                            'assets/Ellipse 5.png',
                            width: 20,
                            height: 20,
                          ),
                    Column(
                      children: [
                        Text(
                          title,
                          style: optionRtTextStyle,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(bottom: 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/Background.png",
              width: 450,
              height: 79,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 1, left: 24),
              child: Column(
                children: [
                  Text(
                    'Kategori RT',
                    style: kategoriRtTextStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              Column(
                children: [
                  header(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OptionRt01(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 26),
                      child: option(0, 'RT 01'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OptionRt02(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 26,
                      ),
                      child: option(1, 'RT 02'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OptionRt03(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 26),
                      child: option(2, 'RT 03'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OptionRt04(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 26),
                      child: option(3, 'RT 04'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OptionRt05(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 26,
                      ),
                      child: option(4, 'RT 05'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OptionRt010(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 26),
                      child: option(5, 'RT 010'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OptionRt011(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 26),
                      child: option(6, 'RT 011'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OptionRt017(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 26),
                      child: option(7, 'RT 017'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 76,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
