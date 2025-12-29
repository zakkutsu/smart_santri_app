import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HowToUseScreen extends StatelessWidget {
  const HowToUseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Panduan Penggunaan'),
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(40),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue.shade700, Colors.blue.shade900],
                ),
              ),
              child: Column(
                children: [
                  const Icon(Icons.help_outline, size: 80, color: Colors.white),
                  const SizedBox(height: 20),
                  const Text(
                    'Cara Menggunakan Aplikasi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Panduan lengkap untuk memaksimalkan fitur aplikasi',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // Tutorial Steps
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Tutorial Step-by-Step',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  _buildTutorialStep(
                    step: 1,
                    title: 'Dashboard / Portal Santri',
                    description:
                        'Di halaman utama, Anda akan melihat menu-menu utama seperti E-Learning, Jadwal Ngaji, Cek Hafalan, dan SPP & Infaq. Klik menu sesuai kebutuhan Anda.',
                    icon: Icons.home,
                    color: Colors.green,
                  ),
                  _buildTutorialStep(
                    step: 2,
                    title: 'E-Learning',
                    description:
                        'Akses materi pembelajaran digital seperti video, audio, dan PDF. Pilih kategori mata pelajaran (Fiqih, Bahasa Arab, dll) lalu tap pada materi yang ingin dipelajari.',
                    icon: Icons.laptop_chromebook,
                    color: Colors.blue,
                  ),
                  _buildTutorialStep(
                    step: 3,
                    title: 'Jadwal Ngaji',
                    description:
                        'Lihat jadwal pengajian kitab kuning. Anda juga bisa menambah jadwal baru dengan menekan tombol (+) di pojok kanan bawah, atau menghapus jadwal dengan tap icon delete.',
                    icon: Icons.menu_book,
                    color: Colors.brown,
                  ),
                  _buildTutorialStep(
                    step: 4,
                    title: 'Progress Tahfidz',
                    description:
                        'Pantau progress hafalan Al-Quran Anda. Lihat grafik kemajuan, target juz, dan riwayat setoran. Status setoran ditandai dengan warna (hijau = lancar, orange = perlu murojaah).',
                    icon: Icons.mic,
                    color: Colors.teal,
                  ),
                  _buildTutorialStep(
                    step: 5,
                    title: 'SPP & Pembayaran',
                    description:
                        'Cek tagihan SPP bulan ini dan riwayat transaksi pembayaran. Gunakan tombol "Bayar Sekarang" untuk melakukan pembayaran online.',
                    icon: Icons.payment,
                    color: Colors.orange,
                  ),
                  _buildTutorialStep(
                    step: 6,
                    title: 'Unit Usaha Santri',
                    description:
                        'Dukung kemandirian santri dengan membeli produk karya mereka seperti kaligrafi, roti, kerajinan, dan jasa desain. Tap tombol "Beli" untuk melakukan pemesanan.',
                    icon: Icons.store,
                    color: Colors.amber,
                  ),
                ],
              ),
            ),

            // Tips & Tricks
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              color: Colors.grey[50],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.lightbulb, color: Colors.amber, size: 30),
                      SizedBox(width: 10),
                      Text(
                        'Tips & Trik',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  _buildTipCard(
                    '💡 Gunakan menu navigasi di bagian atas untuk kembali ke halaman sebelumnya',
                  ),
                  _buildTipCard(
                    '📱 Aplikasi responsive! Bisa digunakan di HP maupun tablet',
                  ),
                  _buildTipCard(
                    '🔔 Aktifkan notifikasi untuk mendapat info terbaru dari pesantren',
                  ),
                  _buildTipCard(
                    '⭐ Gunakan fitur pencarian untuk menemukan materi dengan cepat',
                  ),
                  _buildTipCard(
                    '🎯 Update progress hafalan secara rutin agar mudah dipantau',
                  ),
                ],
              ),
            ),

            // Video Tutorial (Placeholder)
            Padding(
              padding: const EdgeInsets.all(20),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.play_circle_outline,
                        size: 60,
                        color: Colors.red,
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        'Video Tutorial',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Tonton video panduan lengkap penggunaan aplikasi',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 15),
                      ElevatedButton.icon(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Video tutorial segera hadir!'),
                            ),
                          );
                        },
                        icon: const Icon(Icons.play_arrow),
                        label: const Text('Tonton Sekarang'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildTutorialStep({
    required int step,
    required String title,
    required String description,
    required IconData icon,
    required Color color,
  }) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Step Number
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              child: Center(
                child: Text(
                  '$step',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            // Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(icon, color: color, size: 24),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 15,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTipCard(String tip) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Text(tip, style: const TextStyle(fontSize: 15)),
      ),
    );
  }
}
