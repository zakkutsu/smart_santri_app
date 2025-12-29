import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: Column(
          children: [
            // --- HEADER: PROFIL PESANTREN ---
            Stack(
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(
                      0xFF1B5E20,
                    ), // Placeholder warna hijau tua jika gambar gagal
                    // image: DecorationImage(...) // Nanti bisa kasih gambar masjid
                  ),
                  child: Center(
                    child: Icon(
                      Icons.mosque,
                      size: 100,
                      color: Colors.white.withOpacity(0.2),
                    ),
                  ),
                ),
                // Overlay Gradient Gelap
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.7),
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
                // Teks Profil
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xFF1B5E20),
                          child: Icon(
                            Icons.school,
                            color: Colors.amber,
                            size: 30,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Ponpes Al-Hidayah",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Mencetak Generasi Berakhlak & Mandiri",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // --- MENU AKADEMIK (Grid) ---
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Layanan Akademik",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),

                  // Gunakan LayoutBuilder untuk mendeteksi lebar layar
                  LayoutBuilder(
                    builder: (context, constraints) {
                      // LOGIC RESPONSIF:
                      // Jika lebar layar > 600px (Tablet/Desktop) -> Pakai 4 Kolom
                      // Jika layar kecil (HP) -> Pakai 2 Kolom
                      int jumlahKolom = constraints.maxWidth > 600 ? 4 : 2;

                      // Agar tampilan kartu tidak gepeng di desktop, kita atur rasionya
                      double rasioKartu = constraints.maxWidth > 600
                          ? 1.0
                          : 1.5;

                      return GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount:
                            jumlahKolom, // <--- Angka ini sekarang dinamis
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                        childAspectRatio: rasioKartu,
                        children: [
                          _menuCard(
                            context,
                            "E-Learning",
                            "Modul Digital",
                            Icons.laptop_chromebook,
                            Colors.blue,
                            route: '/elearning',
                          ),
                          _menuCard(
                            context,
                            "Jadwal Ngaji",
                            "Kitab Kuning",
                            Icons.menu_book,
                            Colors.brown,
                            route: '/jadwal',
                          ),
                          _menuCard(
                            context,
                            "Cek Hafalan",
                            "Progress Tahfidz",
                            Icons.mic,
                            Colors.teal,
                            route: '/hafalan',
                          ),
                          _menuCard(
                            context,
                            "SPP & Infaq",
                            "Pembayaran",
                            Icons.payment,
                            Colors.orange,
                            route: '/spp',
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),

            // --- FITUR UNGGULAN: SANTRIPRENEUR (Integrasi Ekonomi) ---
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFF9A825), Color(0xFFFBC02D)],
                ), // Warna Emas
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange.shade100,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Icon(
                      Icons.store,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Unit Usaha Santri",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Dukung kemandirian santri dengan membeli produk karya mereka.",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () => context.push('/unit-usaha'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.orange[800],
                            minimumSize: const Size(120, 36),
                          ),
                          child: const Text("Lihat Produk"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // --- BERITA PESANTREN ---
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Kabar Pesantren",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  _beritaTile(
                    "Penerimaan Santri Baru Gelombang 1",
                    "12 Des 2025",
                  ),
                  _beritaTile("Kajian Akbar Bersama Syekh Ali", "10 Des 2025"),
                  _beritaTile(
                    "Juara 1 Lomba Kaligrafi Nasional",
                    "05 Des 2025",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  // WIDGET: Kartu Menu Akademik
  // WIDGET: Kartu Menu Akademik (DIPERBARUI)
  Widget _menuCard(
    BuildContext context,
    String title,
    String subtitle,
    IconData icon,
    Color color, {
    String? route,
  }) {
    return InkWell(
      onTap: () {
        if (route != null) {
          context.push(route); // Pindah halaman
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Fitur ini belum aktif")),
          );
        }
      },
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade100,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32, color: color),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            Text(
              subtitle,
              style: TextStyle(color: Colors.grey[500], fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }

  // WIDGET: List Berita
  Widget _beritaTile(String title, String date) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.green[100],
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(Icons.article, color: Colors.green),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          date,
          style: TextStyle(fontSize: 11, color: Colors.grey[500]),
        ),
      ),
    );
  }
}
