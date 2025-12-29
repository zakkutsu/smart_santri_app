import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFF1B5E20), // Hijau tua pesantren
            const Color(0xFF2E7D32), // Hijau medium
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 10,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: Column(
        children: [
          // Footer Content
          LayoutBuilder(
            builder: (context, constraints) {
              // Responsive: Desktop (>800px) vs Mobile
              bool isDesktop = constraints.maxWidth > 800;

              return Padding(
                padding: const EdgeInsets.all(40),
                child: isDesktop
                    ? _buildDesktopLayout(context)
                    : _buildMobileLayout(context),
              );
            },
          ),

          // Copyright Bar
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.2),
            ),
            child: Column(
              children: [
                Text(
                  '© ${DateTime.now().year} Smart Santri App - Ponpes Al-Hidayah',
                  style: const TextStyle(color: Colors.white70, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                const Text(
                  'Mencetak Generasi Berakhlak & Mandiri',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDesktopLayout(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: _buildFooterColumn(context, 'Tentang', Icons.info_outline, [
            {'label': 'Tentang Kami', 'route': '/tentang'},
            {'label': 'Visi & Misi', 'route': '/tentang'},
            {'label': 'Statistik', 'route': '/tentang'},
          ]),
        ),
        Expanded(
          child: _buildFooterColumn(context, 'Panduan', Icons.help_outline, [
            {'label': 'Cara Menggunakan', 'route': '/panduan'},
            {'label': 'Tutorial Fitur', 'route': '/panduan'},
            {'label': 'Tips & Trik', 'route': '/panduan'},
          ]),
        ),
        Expanded(
          child: _buildFooterColumn(
            context,
            'Kemitraan',
            Icons.handshake_outlined,
            [
              {'label': 'Mitra Kami', 'route': '/mitra'},
              {'label': 'Jadi Mitra', 'route': '/mitra'},
              {'label': 'Testimoni', 'route': '/mitra'},
            ],
          ),
        ),
        Expanded(
          child: _buildFooterColumn(
            context,
            'Bantuan',
            Icons.support_agent_outlined,
            [
              {'label': 'Pusat Bantuan', 'route': '/bantuan'},
              {'label': 'FAQ', 'route': '/bantuan'},
              {'label': 'Kontak Support', 'route': '/bantuan'},
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Column(
      children: [
        _buildFooterColumn(context, 'Tentang', Icons.info_outline, [
          {'label': 'Tentang Kami', 'route': '/tentang'},
          {'label': 'Visi & Misi', 'route': '/tentang'},
        ]),
        const SizedBox(height: 30),
        _buildFooterColumn(context, 'Panduan', Icons.help_outline, [
          {'label': 'Cara Menggunakan', 'route': '/panduan'},
          {'label': 'Tutorial Fitur', 'route': '/panduan'},
        ]),
        const SizedBox(height: 30),
        _buildFooterColumn(context, 'Kemitraan', Icons.handshake_outlined, [
          {'label': 'Mitra Kami', 'route': '/mitra'},
          {'label': 'Jadi Mitra', 'route': '/mitra'},
        ]),
        const SizedBox(height: 30),
        _buildFooterColumn(context, 'Bantuan', Icons.support_agent_outlined, [
          {'label': 'Pusat Bantuan', 'route': '/bantuan'},
          {'label': 'FAQ', 'route': '/bantuan'},
        ]),
      ],
    );
  }

  Widget _buildFooterColumn(
    BuildContext context,
    String title,
    IconData icon,
    List<Map<String, String>> links,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: Colors.amber, size: 24),
            const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        ...links.map(
          (link) => _buildFooterLink(context, link['label']!, link['route']!),
        ),
      ],
    );
  }

  Widget _buildFooterLink(BuildContext context, String label, String route) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: () => context.push(route),
        onHover: (hovering) {},
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.chevron_right, color: Colors.white70, size: 16),
              const SizedBox(width: 5),
              Text(
                label,
                style: const TextStyle(color: Colors.white70, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
