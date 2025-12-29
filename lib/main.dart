import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'routes/app_router.dart';

void main() {
  runApp(const SmartSantriApp());
}

class SmartSantriApp extends StatelessWidget {
  const SmartSantriApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
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
