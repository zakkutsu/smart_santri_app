import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pusat Bantuan'),
        backgroundColor: Colors.red[700],
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
                  colors: [Colors.red.shade400, Colors.red.shade700],
                ),
              ),
              child: Column(
                children: [
                  const Icon(
                    Icons.support_agent,
                    size: 80,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Pusat Bantuan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Kami siap membantu Anda',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                ],
              ),
            ),

            // FAQ Section
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.quiz, color: Colors.red, size: 30),
                      SizedBox(width: 10),
                      Text(
                        'Pertanyaan yang Sering Diajukan (FAQ)',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  _buildFAQItem(
                    question: 'Bagaimana cara mengakses materi e-learning?',
                    answer:
                        'Untuk mengakses e-learning, klik menu "E-Learning" di dashboard utama. Pilih kategori mata pelajaran, lalu tap pada materi yang ingin dipelajari. Anda bisa download materi untuk belajar offline.',
                  ),
                  _buildFAQItem(
                    question: 'Bagaimana cara menambah jadwal ngaji?',
                    answer:
                        'Buka menu "Jadwal Ngaji", lalu tekan tombol (+) di pojok kanan bawah. Isi form dengan nama kitab, waktu, dan nama pengajar, kemudian klik "Simpan".',
                  ),
                  _buildFAQItem(
                    question: 'Bagaimana cara cek progress hafalan saya?',
                    answer:
                        'Masuk ke menu "Cek Hafalan" untuk melihat grafik progress, target hafalan, dan riwayat setoran. Status ditandai dengan warna: hijau (lancar), orange (perlu murojaah), abu-abu (belum setor).',
                  ),
                  _buildFAQItem(
                    question: 'Bagaimana cara membayar SPP?',
                    answer:
                        'Buka menu "SPP & Infaq", lihat tagihan bulan ini, lalu klik tombol "Bayar Sekarang". Pilih metode pembayaran yang tersedia (transfer bank, e-wallet, dll).',
                  ),
                  _buildFAQItem(
                    question: 'Apakah bisa membeli produk unit usaha santri?',
                    answer:
                        'Ya! Buka menu "Unit Usaha Santri", pilih produk yang ingin dibeli, lalu tap tombol "Beli". Anda akan diarahkan untuk melakukan pemesanan dan pembayaran.',
                  ),
                  _buildFAQItem(
                    question: 'Apakah aplikasi ini gratis?',
                    answer:
                        'Ya, aplikasi Smart Santri App gratis untuk semua santri Ponpes Al-Hidayah. Tidak ada biaya berlangganan atau biaya tersembunyi.',
                  ),
                  _buildFAQItem(
                    question: 'Bagaimana jika lupa password?',
                    answer:
                        'Klik "Lupa Password" di halaman login, masukkan email atau nomor HP yang terdaftar. Link reset password akan dikirim via email/SMS.',
                  ),
                  _buildFAQItem(
                    question: 'Apakah data saya aman?',
                    answer:
                        'Tentu! Kami menggunakan enkripsi SSL dan sistem keamanan berlapis untuk melindungi data pribadi Anda. Data hanya digunakan untuk keperluan akademik pesantren.',
                  ),
                ],
              ),
            ),

            // Contact Support Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              color: Colors.grey[50],
              child: Column(
                children: [
                  const Icon(
                    Icons.contact_support,
                    size: 60,
                    color: Colors.red,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Masih Butuh Bantuan?',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Hubungi tim support kami',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 30),
                  _buildContactCard(
                    icon: Icons.phone,
                    title: 'Telepon',
                    content: '+62 812-3456-7890',
                    color: Colors.green,
                  ),
                  _buildContactCard(
                    icon: Icons.email,
                    title: 'Email',
                    content: 'support@ponpesalhidayah.sch.id',
                    color: Colors.blue,
                  ),
                  _buildContactCard(
                    icon: Icons.chat,
                    title: 'WhatsApp',
                    content: '+62 812-3456-7890',
                    color: Colors.teal,
                  ),
                  _buildContactCard(
                    icon: Icons.access_time,
                    title: 'Jam Operasional',
                    content: 'Senin - Jumat: 08.00 - 16.00 WIB',
                    color: Colors.orange,
                  ),
                ],
              ),
            ),

            // Quick Actions
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text(
                    'Aksi Cepat',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: _buildQuickActionButton(
                          icon: Icons.bug_report,
                          label: 'Laporkan Bug',
                          color: Colors.orange,
                          onPressed: () {
                            _showReportDialog(context, 'Bug Report');
                          },
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: _buildQuickActionButton(
                          icon: Icons.feedback,
                          label: 'Kirim Feedback',
                          color: Colors.blue,
                          onPressed: () {
                            _showReportDialog(context, 'Feedback');
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildFAQItem({required String question, required String answer}) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ExpansionTile(
        title: Text(
          question,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
        ),
        leading: const Icon(Icons.help_outline, color: Colors.red),
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              answer,
              style: const TextStyle(
                fontSize: 14,
                height: 1.5,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactCard({
    required IconData icon,
    required String title,
    required String content,
    required Color color,
  }) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: color),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(content),
      ),
    );
  }

  Widget _buildQuickActionButton({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Column(
        children: [
          Icon(icon, size: 30),
          const SizedBox(height: 5),
          Text(label, textAlign: TextAlign.center),
        ],
      ),
    );
  }

  void _showReportDialog(BuildContext context, String type) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(type),
        content: TextField(
          maxLines: 5,
          decoration: InputDecoration(
            hintText: 'Tulis $type Anda di sini...',
            border: const OutlineInputBorder(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Batal'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(ctx);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('$type berhasil dikirim. Terima kasih!'),
                  backgroundColor: Colors.green,
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            child: const Text('Kirim'),
          ),
        ],
      ),
    );
  }
}
