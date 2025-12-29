import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PartnersScreen extends StatelessWidget {
  const PartnersScreen({super.key});

  final List<Map<String, dynamic>> _partners = const [
    {
      'name': 'Yayasan Pendidikan Islam Nusantara',
      'type': 'Lembaga Pendidikan',
      'description':
          'Partner dalam pengembangan kurikulum dan sertifikasi guru',
      'icon': Icons.account_balance,
      'color': Colors.blue,
    },
    {
      'name': 'Bank Syariah Indonesia',
      'type': 'Perbankan',
      'description': 'Sistem pembayaran SPP dan donasi digital yang aman',
      'icon': Icons.account_balance_wallet,
      'color': Colors.green,
    },
    {
      'name': 'Rumah Tahfidz Indonesia',
      'type': 'Tahfidz',
      'description': 'Program monitoring dan evaluasi hafalan Al-Quran',
      'icon': Icons.book,
      'color': Colors.teal,
    },
    {
      'name': 'Koperasi Santri Mandiri',
      'type': 'Kewirausahaan',
      'description': 'Distribusi produk unit usaha santri ke pasar lebih luas',
      'icon': Icons.storefront,
      'color': Colors.orange,
    },
    {
      'name': 'Pesantren Network Indonesia',
      'type': 'Jaringan Pesantren',
      'description': 'Kolaborasi antar pesantren dalam sharing best practice',
      'icon': Icons.mosque,
      'color': Colors.purple,
    },
    {
      'name': 'Tech for Islamic Education',
      'type': 'Teknologi',
      'description': 'Pengembangan platform e-learning dan aplikasi mobile',
      'icon': Icons.computer,
      'color': Colors.indigo,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mitra Kami'),
        backgroundColor: Colors.deepPurple,
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
                  colors: [
                    Colors.deepPurple.shade400,
                    Colors.deepPurple.shade700,
                  ],
                ),
              ),
              child: Column(
                children: [
                  const Icon(Icons.handshake, size: 80, color: Colors.white),
                  const SizedBox(height: 20),
                  const Text(
                    'Mitra & Partner Kami',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Bekerja sama untuk kemajuan pendidikan pesantren',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // Partners List
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Partner Resmi',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  ..._partners.map(
                    (partner) => _buildPartnerCard(
                      name: partner['name'],
                      type: partner['type'],
                      description: partner['description'],
                      icon: partner['icon'],
                      color: partner['color'],
                    ),
                  ),
                ],
              ),
            ),

            // Become Partner Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              color: Colors.grey[50],
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Icon(
                      Icons.volunteer_activism,
                      size: 60,
                      color: Colors.deepPurple,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Tertarik Menjadi Mitra?',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Mari bergabung dengan kami untuk memajukan pendidikan pesantren di Indonesia',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () {
                      _showPartnershipForm(context);
                    },
                    icon: const Icon(Icons.send),
                    label: const Text('Ajukan Kemitraan'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
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

            // Testimonials
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Testimoni Mitra',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  _buildTestimonialCard(
                    name: 'Dr. Ahmad Fauzi',
                    position: 'Direktur YPIN',
                    testimonial:
                        'Kolaborasi dengan Smart Santri App sangat membantu dalam digitalisasi administrasi pesantren. Sistem yang modern namun tetap menjaga nilai-nilai pesantren.',
                    rating: 5,
                  ),
                  _buildTestimonialCard(
                    name: 'Ustadz Zainal Abidin',
                    position: 'Ketua Rumah Tahfidz Indonesia',
                    testimonial:
                        'Fitur monitoring hafalan sangat memudahkan pengajar dalam memantau progress santri. Alhamdulillah berkah untuk pendidikan tahfidz.',
                    rating: 5,
                  ),
                  _buildTestimonialCard(
                    name: 'Ibu Siti Nurhaliza',
                    position: 'Manajer Koperasi Santri',
                    testimonial:
                        'Platform unit usaha santri membuka peluang pasar yang lebih luas. Produk santri kini bisa dikenal lebih banyak orang.',
                    rating: 4,
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

  Widget _buildPartnerCard({
    required String name,
    required String type,
    required String description,
    required IconData icon,
    required Color color,
  }) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(icon, color: color, size: 35),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                      color: color.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      type,
                      style: TextStyle(
                        fontSize: 12,
                        color: color.withValues(
                          red: 0.2,
                          green: 0.2,
                          blue: 0.2,
                        ),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      height: 1.4,
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

  Widget _buildTestimonialCard({
    required String name,
    required String position,
    required String testimonial,
    required int rating,
  }) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.deepPurple.withValues(alpha: 0.1),
                  child: Text(
                    name[0],
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        position,
                        style: TextStyle(color: Colors.grey[600], fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: List.generate(
                5,
                (index) => Icon(
                  index < rating ? Icons.star : Icons.star_border,
                  color: Colors.amber,
                  size: 20,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '"$testimonial"',
              style: const TextStyle(
                fontSize: 15,
                fontStyle: FontStyle.italic,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showPartnershipForm(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Formulir Kemitraan'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Nama Lembaga/Perusahaan',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Nomor Telepon',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                maxLines: 3,
                decoration: const InputDecoration(
                  labelText: 'Deskripsi Kemitraan',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
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
                const SnackBar(
                  content: Text(
                    'Terima kasih! Pengajuan Anda akan kami review.',
                  ),
                  backgroundColor: Colors.green,
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
            ),
            child: const Text('Kirim'),
          ),
        ],
      ),
    );
  }
}
