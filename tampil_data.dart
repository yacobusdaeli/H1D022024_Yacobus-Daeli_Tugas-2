import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahun;

  const TampilData({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int umur = DateTime.now().year - tahun;
    return Scaffold(
      appBar: AppBar(
        title:
            const Text("Perkenalan", style: TextStyle(fontFamily: 'Poppins')),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            "Nama saya $nama, NIM $nim, dan umur saya adalah $umur tahun",
            style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
