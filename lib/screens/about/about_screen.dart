import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Kami'),
        backgroundColor: const Color(0xFF1B5E20),
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
                  colors: [const Color(0xFF1B5E20), const Color(0xFF2E7D32)],
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.2),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.school,
                      size: 60,
                      color: Color(0xFF1B5E20),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Smart Santri App',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Ponpes Al-Hidayah',
                    style: TextStyle(color: Colors.white70, fontSize: 18),
                  ),
                ],
              ),
            ),

            // Visi & Misi
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  _buildSectionCard(
                    icon: Icons.visibility,
                    iconColor: Colors.blue,
                    title: 'Visi Kami',
                    content:
                        'Menjadi lembaga pendidikan Islam terdepan yang mengintegrasikan teknologi digital dengan nilai-nilai pesantren untuk mencetak generasi yang berakhlak mulia, cerdas, dan mandiri.',
                  ),
                  const SizedBox(height: 20),
                  _buildSectionCard(
                    icon: Icons.flag,
                    iconColor: Colors.orange,
                    title: 'Misi Kami',
                    content:
                        '1. Memberikan pendidikan agama yang berkualitas\n'
                        '2. Memfasilitasi pembelajaran dengan teknologi modern\n'
                        '3. Membina karakter santri yang mandiri dan berakhlak\n'
                        '4. Mengembangkan potensi santri di bidang akademik dan non-akademik\n'
                        '5. Membangun ekosistem pesantren yang produktif dan inovatif',
                  ),
                  const SizedBox(height: 20),
                  _buildSectionCard(
                    icon: Icons.diamond,
                    iconColor: Colors.purple,
                    title: 'Nilai-Nilai Kami',
                    content: null,
                    children: [
                      _buildValueItem(
                        Icons.mosque,
                        'Religius',
                        'Menjunjung tinggi nilai-nilai Islam',
                      ),
                      _buildValueItem(
                        Icons.school,
                        'Edukatif',
                        'Mengedepankan pendidikan berkualitas',
                      ),
                      _buildValueItem(
                        Icons.handshake,
                        'Integritas',
                        'Jujur dan dapat dipercaya',
                      ),
                      _buildValueItem(
                        Icons.lightbulb,
                        'Inovatif',
                        'Terbuka terhadap teknologi dan perubahan',
                      ),
                      _buildValueItem(
                        Icons.people,
                        'Kolaboratif',
                        'Bekerja sama untuk kemajuan bersama',
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Statistik
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              color: Colors.grey[50],
              child: Column(
                children: [
                  const Text(
                    'Statistik Aplikasi',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    alignment: WrapAlignment.center,
                    children: [
                      _buildStatCard(
                        '1,250+',
                        'Santri Aktif',
                        Icons.people,
                        Colors.blue,
                      ),
                      _buildStatCard(
                        '50+',
                        'Ustadz/Ustadzah',
                        Icons.person,
                        Colors.green,
                      ),
                      _buildStatCard(
                        '15',
                        'Tahun Berdiri',
                        Icons.calendar_today,
                        Colors.orange,
                      ),
                      _buildStatCard(
                        '10+',
                        'Program Unggulan',
                        Icons.star,
                        Colors.purple,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Contact Info
            Padding(
              padding: const EdgeInsets.all(20),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Text(
                        'Hubungi Kami',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      _buildContactItem(
                        Icons.location_on,
                        'Jl. Pesantren No. 123, Kota Santri',
                      ),
                      _buildContactItem(Icons.phone, '+62 812-3456-7890'),
                      _buildContactItem(
                        Icons.email,
                        'info@ponpesalhidayah.sch.id',
                      ),
                      _buildContactItem(
                        Icons.language,
                        'www.ponpesalhidayah.sch.id',
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

  Widget _buildSectionCard({
    required IconData icon,
    required Color iconColor,
    required String title,
    String? content,
    List<Widget>? children,
  }) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: iconColor.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(icon, color: iconColor, size: 30),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            if (content != null) ...[
              const SizedBox(height: 15),
              Text(
                content,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: Colors.black87,
                ),
              ),
            ],
            if (children != null) ...[const SizedBox(height: 15), ...children],
          ],
        ),
      ),
    );
  }

  Widget _buildValueItem(IconData icon, String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: const Color(0xFF1B5E20), size: 24),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  description,
                  style: TextStyle(color: Colors.grey[600], fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(
    String value,
    String label,
    IconData icon,
    Color color,
  ) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 40),
          const SizedBox(height: 15),
          Text(
            value,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF1B5E20)),
          const SizedBox(width: 15),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
        ],
      ),
    );
  }
}
