import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HalamanElearning extends StatelessWidget {
  const HalamanElearning({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("E-Learning Santri"),
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
        leading: IconButton(onPressed: () => context.pop(), icon: const Icon(Icons.arrow_back)),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          _kategoriMapel("Fiqih & Ibadah", Icons.mosque, Colors.green),
          _itemMateri("Cara Wudhu yang Benar", "Video • 10 Menit"),
          _itemMateri("Rukun Shalat Fardhu", "PDF • 5 Halaman"),
          
          const SizedBox(height: 20),
          
          _kategoriMapel("Bahasa Arab", Icons.translate, Colors.orange),
          _itemMateri("Percakapan Sehari-hari (Hiwar)", "Audio • 15 Menit"),
          _itemMateri("Kosa Kata (Mufradat) Bab 1", "PDF • 3 Halaman"),
        ],
      ),
    );
  }

  Widget _kategoriMapel(String judul, IconData icon, Color warna) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(icon, color: warna),
          const SizedBox(width: 10),
          Text(judul, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _itemMateri(String judul, String tipe) {
    return Card(
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(5)),
          child: const Icon(Icons.play_circle_fill, color: Colors.blue),
        ),
        title: Text(judul),
        subtitle: Text(tipe),
        trailing: const Icon(Icons.download_rounded),
      ),
    );
  }
}