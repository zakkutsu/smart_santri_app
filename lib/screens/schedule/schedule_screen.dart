import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  // DATA DUMMY (CRUD: Read)
  final List<Map<String, String>> _jadwal = [
    {
      "kitab": "Kitab Al-Jurumiyah",
      "waktu": "07:00 - 08:30",
      "pengajar": "Ust. Abdullah",
    },
    {
      "kitab": "Tafsir Jalalain",
      "waktu": "16:00 - 17:30",
      "pengajar": "Kyai Hasan",
    },
    {
      "kitab": "Hadits Arbain",
      "waktu": "19:30 - 20:30",
      "pengajar": "Ust. Solmed",
    },
  ];

  // LOGIC: Tambah Jadwal (Create)
  void _tambahJadwal(String kitab, String waktu, String pengajar) {
    if (kitab.isNotEmpty && waktu.isNotEmpty) {
      setState(() {
        _jadwal.add({"kitab": kitab, "waktu": waktu, "pengajar": pengajar});
      });
      Navigator.pop(context); // Tutup dialog
    }
  }

  // LOGIC: Hapus Jadwal (Delete)
  void _hapusJadwal(int index) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Hapus Jadwal?"),
        content: Text("Hapus kajian ${_jadwal[index]['kitab']}?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text("Batal"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              setState(() {
                _jadwal.removeAt(index);
              });
              Navigator.pop(ctx);
            },
            child: const Text("Hapus"),
          ),
        ],
      ),
    );
  }

  // FORM DIALOG
  void _showForm() {
    final kitabCtrl = TextEditingController();
    final waktuCtrl = TextEditingController();
    final pengajarCtrl = TextEditingController();

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Tambah Jadwal Ngaji"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: kitabCtrl,
              decoration: const InputDecoration(labelText: "Nama Kitab"),
            ),
            TextField(
              controller: waktuCtrl,
              decoration: const InputDecoration(
                labelText: "Waktu (Cth: 08:00)",
              ),
            ),
            TextField(
              controller: pengajarCtrl,
              decoration: const InputDecoration(labelText: "Pengajar"),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text("Batal"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF1B5E20),
              foregroundColor: Colors.white,
            ),
            onPressed: () => _tambahJadwal(
              kitabCtrl.text,
              waktuCtrl.text,
              pengajarCtrl.text,
            ),
            child: const Text("Simpan"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jadwal Pengajian"),
        backgroundColor: const Color(0xFF1B5E20), // Hijau Pesantren
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showForm(),
        backgroundColor: Colors.amber[700],
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: _jadwal.length,
        itemBuilder: (context, index) {
          final item = _jadwal[index];
          return Card(
            elevation: 3,
            margin: const EdgeInsets.only(bottom: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.menu_book, color: Color(0xFF1B5E20)),
              ),
              title: Text(
                item['kitab']!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Icon(
                        Icons.access_time,
                        size: 14,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 5),
                      Text(item['waktu']!),
                    ],
                  ),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      const Icon(Icons.person, size: 14, color: Colors.grey),
                      const SizedBox(width: 5),
                      Text(item['pengajar']!),
                    ],
                  ),
                ],
              ),
              trailing: IconButton(
                icon: const Icon(Icons.delete_outline, color: Colors.red),
                onPressed: () => _hapusJadwal(index),
              ),
            ),
          );
        },
      ),
    );
  }
}
