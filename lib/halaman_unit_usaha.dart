import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HalamanUnitUsaha extends StatelessWidget {
  const HalamanUnitUsaha({super.key});

  final List<Map<String, dynamic>> _produkSantri = const [
    {"nama": "Kaligrafi Ukir Kayu", "harga": "Rp 250.000", "karya": "Kelas 12 MA", "color": Colors.brown},
    {"nama": "Roti Manis Al-Barokah", "harga": "Rp 5.000", "karya": "Ekskul Tata Boga", "color": Colors.orange},
    {"nama": "Peci Rajut Manual", "harga": "Rp 35.000", "karya": "Santri Putri", "color": Colors.teal},
    {"nama": "Jasa Desain Poster", "harga": "Rp 50.000", "karya": "Multimedia Club", "color": Colors.blue},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unit Usaha Santri"),
        backgroundColor: Colors.amber[700], // Warna Emas/Kewirausahaan
        foregroundColor: Colors.white,
        leading: IconButton(onPressed: () => context.pop(), icon: const Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          // Banner
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Colors.amber[100],
            child: Row(
              children: [
                Icon(Icons.store, size: 50, color: Colors.amber[800]),
                const SizedBox(width: 15),
                const Expanded(
                  child: Text(
                    "Dari Santri, Oleh Santri, Untuk Mandiri.",
                    style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(15),
              itemCount: _produkSantri.length,
              separatorBuilder: (ctx, i) => const SizedBox(height: 15),
              itemBuilder: (context, index) {
                final item = _produkSantri[index];
                return Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(10),
                    leading: Container(
                      width: 60, height: 60,
                      decoration: BoxDecoration(color: item['color'][100], borderRadius: BorderRadius.circular(10)),
                      child: Icon(Icons.shopping_bag, color: item['color']),
                    ),
                    title: Text(item['nama'], style: const TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Karya: ${item['karya']}"),
                        const SizedBox(height: 5),
                        Text(item['harga'], style: TextStyle(color: Colors.green[700], fontWeight: FontWeight.bold)),
                      ],
                    ),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.amber[700], foregroundColor: Colors.white),
                      child: const Text("Beli"),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}