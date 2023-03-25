// ignore: unused_import
// ignore_for_file: non_constant_identifier_names
// ignore: unused_import
import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:aplikasi_pedulilansia/theme.dart';
// ignore: unused_import
import 'package:aplikasi_pedulilansia/pages/home_page.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

class GpsPage extends StatefulWidget {
  const GpsPage({Key? key}) : super(key: key);

  @override
  State<GpsPage> createState() => _GpsPageState();
}

class _GpsPageState extends State<GpsPage> {
  // ignore: prefer_final_fields, unused_field
  String _displayText = 'Result go here';
  // ignore: deprecated_member_use, unused_field
  final _database = FirebaseDatabase.instance.reference();

  @override
  void initState() {
    super.initState();
    _activateListeners();
  }

  void _activateListeners() {
    _database.child('Satelit/GPS').onValue.listen((event) {
      // ignore: unused_local_variable
      final Object? GPS = event.snapshot.value;
      setState(() {
        _displayText = 'Lokasi Terkini Lansia : $GPS';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Find My Parent"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              Text(_displayText),
            ],
          ),
        ),
      ),
    );
  }
}
