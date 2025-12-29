import 'package:go_router/go_router.dart';
import '../screens/home/home_screen.dart';
import '../screens/schedule/schedule_screen.dart';
import '../screens/elearning/elearning_screen.dart';
import '../screens/tahfidz/tahfidz_screen.dart';
import '../screens/payment/payment_screen.dart';
import '../screens/business/business_screen.dart';
import '../screens/about/about_screen.dart';
import '../screens/about/how_to_use_screen.dart';
import '../screens/about/partners_screen.dart';
import '../screens/about/help_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(
      path: '/jadwal',
      builder: (context, state) => const ScheduleScreen(),
    ),
    GoRoute(
      path: '/unit-usaha',
      builder: (context, state) => const BusinessScreen(),
    ),
    GoRoute(path: '/spp', builder: (context, state) => const PaymentScreen()),
    GoRoute(
      path: '/elearning',
      builder: (context, state) => const ElearningScreen(),
    ),
    GoRoute(
      path: '/hafalan',
      builder: (context, state) => const TahfidzScreen(),
    ),
    // Footer Routes
    GoRoute(path: '/tentang', builder: (context, state) => const AboutScreen()),
    GoRoute(
      path: '/panduan',
      builder: (context, state) => const HowToUseScreen(),
    ),
    GoRoute(
      path: '/mitra',
      builder: (context, state) => const PartnersScreen(),
    ),
    GoRoute(path: '/bantuan', builder: (context, state) => const HelpScreen()),
  ],
);
