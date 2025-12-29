import 'package:go_router/go_router.dart';
import '../screens/home/home_screen.dart';
import '../screens/schedule/schedule_screen.dart';
import '../screens/elearning/elearning_screen.dart';
import '../screens/tahfidz/tahfidz_screen.dart';
import '../screens/payment/payment_screen.dart';
import '../screens/business/business_screen.dart';

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
  ],
);
