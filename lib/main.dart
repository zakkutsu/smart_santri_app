import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'portal_santri.dart';
import 'halaman_jadwal.dart';
import 'halaman_unit_usaha.dart'; 
import 'halaman_spp.dart';        
import 'halaman_elearning.dart';  
import 'halaman_hafalan.dart';    

void main() {
  runApp(const SmartSantriApp());
}

final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const PortalSantri(),
    ),
    GoRoute(
      path: '/jadwal',
      builder: (context, state) => const HalamanJadwal(),
    ),
    GoRoute(
      path: '/unit-usaha',
      builder: (context, state) => const HalamanUnitUsaha(),
    ),
    GoRoute(
      path: '/spp',
      builder: (context, state) => const HalamanSPP(),
    ),
    GoRoute(
      path: '/elearning',
      builder: (context, state) => const HalamanElearning(),
    ),
    GoRoute(
      path: '/hafalan',
      builder: (context, state) => const HalamanHafalan(),
    ),
  ],
);

class SmartSantriApp extends StatelessWidget {
  const SmartSantriApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Smart Santri Portal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        // Tema Emas & Hijau Tua (Nuansa Pesantren Premium)
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1B5E20)), 
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
    );
  }
}