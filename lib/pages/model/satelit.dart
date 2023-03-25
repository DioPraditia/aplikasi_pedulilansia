import 'dart:ffi';

class Satelitgps {
  // ignore: non_constant_identifier_names
  final Float GPS;

  // ignore: non_constant_identifier_names
  Satelitgps({required this.GPS});

  factory Satelitgps.fromRTDB(Map<String, dynamic> data) {
    return Satelitgps(GPS: data['GPS']);
  }

  String fancyDescription(){
    return 'Lokasi Terkini Lansia : $GPS';
  }
}