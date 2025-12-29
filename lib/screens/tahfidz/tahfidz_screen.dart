import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TahfidzScreen extends StatelessWidget {
  const TahfidzScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Progress Tahfidz"),
        backgroundColor: Colors.teal[700],
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Grafik Progress
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.teal.shade400, Colors.teal.shade700],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Text(
                    "Target: Juz 30",
                    style: TextStyle(color: Colors.white70),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "75%",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  LinearProgressIndicator(
                    value: 0.75,
                    backgroundColor: Colors.teal[900],
                    color: Colors.yellow,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Semangat! Tinggal sedikit lagi khatam Juz 30.",
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Setoran Terakhir",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),

            // List Setoran
            _itemSetoran("Surah An-Naba'", "Ayat 1-40", "Lancar", Colors.green),
            _itemSetoran(
              "Surah An-Nazi'at",
              "Ayat 1-20",
              "Lancar",
              Colors.green,
            ),
            _itemSetoran(
              "Surah An-Nazi'at",
              "Ayat 21-46",
              "Perlu Murojaah",
              Colors.orange,
            ),
            _itemSetoran("Surah Abasa", "-", "Belum Setor", Colors.grey),
          ],
        ),
      ),
    );
  }

  Widget _itemSetoran(String surah, String ayat, String status, Color warna) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: warna.withOpacity(0.1),
          child: Icon(Icons.mic, color: warna),
        ),
        title: Text(surah, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(ayat),
        trailing: Chip(
          label: Text(
            status,
            style: const TextStyle(color: Colors.white, fontSize: 10),
          ),
          backgroundColor: warna,
        ),
      ),
    );
  }
}
