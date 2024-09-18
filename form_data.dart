import '/ui/tampil_data.dart';
import 'package:flutter/material.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  FormDataState createState() => FormDataState();
}

class FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text("Input Data", style: TextStyle(fontFamily: 'Poppins')),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _textboxNama(),
            const SizedBox(height: 16),
            _textboxNIM(),
            const SizedBox(height: 16),
            _textboxTahun(),
            const SizedBox(height: 32),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  Widget _textboxNama() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Nama",
        border: OutlineInputBorder(),
        labelStyle: TextStyle(fontFamily: 'Poppins'),
      ),
      controller: _namaController,
      style: TextStyle(fontFamily: 'Poppins'),
    );
  }

  Widget _textboxNIM() {
    return TextField(
      decoration: InputDecoration(
        labelText: "NIM",
        border: OutlineInputBorder(),
        labelStyle: TextStyle(fontFamily: 'Poppins'),
      ),
      controller: _nimController,
      style: TextStyle(fontFamily: 'Poppins'),
    );
  }

  Widget _textboxTahun() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Tahun Lahir",
        border: OutlineInputBorder(),
        labelStyle: TextStyle(fontFamily: 'Poppins'),
      ),
      controller: _tahunController,
      style: TextStyle(fontFamily: 'Poppins'),
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        String nama = _namaController.text;
        String nim = _nimController.text;
        int tahun = int.parse(_tahunController.text);
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                TampilData(nama: nama, nim: nim, tahun: tahun)));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.cyan, // Mengubah background tombol
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
      child: const Text(
        'Simpan',
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white, // Mengubah warna teks menjadi putih
        ),
      ),
    );
  }
}
