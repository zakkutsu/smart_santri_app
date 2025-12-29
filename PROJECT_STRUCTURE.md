# 📁 Smart Santri App - Project Structure

Dokumentasi struktur folder project Smart Santri App setelah restrukturisasi profesional.

---

## 🏗️ Struktur Folder Baru

```
lib/
├── main.dart                          # Entry point aplikasi
├── routes/
│   └── app_router.dart               # Centralized routing dengan GoRouter
├── screens/                          # Feature-based screen organization
│   ├── home/
│   │   └── home_screen.dart         # Portal utama santri (dashboard)
│   ├── schedule/
│   │   └── schedule_screen.dart     # Jadwal pengajian & kitab
│   ├── elearning/
│   │   └── elearning_screen.dart    # E-learning & modul digital
│   ├── tahfidz/
│   │   └── tahfidz_screen.dart      # Progress hafalan Quran
│   ├── payment/
│   │   └── payment_screen.dart      # Info pembayaran SPP & infaq
│   └── business/
│       └── business_screen.dart     # Unit usaha santri (marketplace)
├── widgets/
│   └── common/                       # Shared reusable widgets (siap digunakan)
├── models/                           # Data models (belum ada, siap digunakan)
├── services/                         # Business logic & API (belum ada, siap digunakan)
├── utils/                            # Helper functions & constants (belum ada, siap digunakan)
└── config/                           # Configuration files (siap digunakan)
```

---

## 📊 Perubahan dari Struktur Lama

### **SEBELUM (Flat Structure):**
```
lib/
├── main.dart
├── portal_santri.dart
├── halaman_jadwal.dart
├── halaman_elearning.dart
├── halaman_hafalan.dart
├── halaman_spp.dart
└── halaman_unit_usaha.dart
```

### **SESUDAH (Feature-based Structure):**
```
lib/
├── main.dart
├── routes/app_router.dart
└── screens/
    ├── home/home_screen.dart
    ├── schedule/schedule_screen.dart
    ├── elearning/elearning_screen.dart
    ├── tahfidz/tahfidz_screen.dart
    ├── payment/payment_screen.dart
    └── business/business_screen.dart
```

---

## 🎯 Mapping File Lama → File Baru

| File Lama                    | File Baru                                  | Perubahan Nama Class     |
|------------------------------|--------------------------------------------|--------------------------| 
| `portal_santri.dart`         | `screens/home/home_screen.dart`           | `PortalSantri` → `HomeScreen` |
| `halaman_jadwal.dart`        | `screens/schedule/schedule_screen.dart`   | `HalamanJadwal` → `ScheduleScreen` |
| `halaman_elearning.dart`     | `screens/elearning/elearning_screen.dart` | `HalamanElearning` → `ElearningScreen` |
| `halaman_hafalan.dart`       | `screens/tahfidz/tahfidz_screen.dart`     | `HalamanHafalan` → `TahfidzScreen` |
| `halaman_spp.dart`           | `screens/payment/payment_screen.dart`     | `HalamanSPP` → `PaymentScreen` |
| `halaman_unit_usaha.dart`    | `screens/business/business_screen.dart`   | `HalamanUnitUsaha` → `BusinessScreen` |

---

## 🚀 Keuntungan Struktur Baru

✅ **Scalability**: Mudah menambah fitur baru tanpa mengotori root folder  
✅ **Maintainability**: Lebih mudah maintain karena terorganisir per feature  
✅ **Collaboration**: Tim bisa kerja parallel tanpa conflict  
✅ **Clean Architecture**: Siap untuk implementasi layer pattern (repository, usecase, dll)  
✅ **Industry Standard**: Mengikuti best practice Flutter development  

---

## 📝 Routing Management

Semua routes sekarang terpusat di `lib/routes/app_router.dart`:

```dart
final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(path: '/jadwal', builder: (context, state) => const ScheduleScreen()),
    GoRoute(path: '/elearning', builder: (context, state) => const ElearningScreen()),
    GoRoute(path: '/hafalan', builder: (context, state) => const TahfidzScreen()),
    GoRoute(path: '/spp', builder: (context, state) => const PaymentScreen()),
    GoRoute(path: '/unit-usaha', builder: (context, state) => const BusinessScreen()),
  ],
);
```

### **Cara Navigasi:**
```dart
// Push ke halaman baru
context.push('/jadwal');

// Pop kembali
context.pop();
```

---

## 🔨 Cara Menambah Feature Baru

### **Contoh: Menambah fitur "Prestasi Santri"**

1. **Buat folder & file baru:**
   ```
   lib/screens/achievement/
   └── achievement_screen.dart
   ```

2. **Buat class screen:**
   ```dart
   import 'package:flutter/material.dart';
   import 'package:go_router/go_router.dart';

   class AchievementScreen extends StatelessWidget {
     const AchievementScreen({super.key});

     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(title: const Text("Prestasi Santri")),
         body: Center(child: Text("Daftar prestasi santri")),
       );
     }
   }
   ```

3. **Tambahkan route di `app_router.dart`:**
   ```dart
   import '../screens/achievement/achievement_screen.dart';

   GoRoute(
     path: '/prestasi',
     builder: (context, state) => const AchievementScreen(),
   ),
   ```

4. **Panggil dari widget lain:**
   ```dart
   ElevatedButton(
     onPressed: () => context.push('/prestasi'),
     child: Text("Lihat Prestasi"),
   )
   ```

---

## 📦 Folder Siap Pakai (Belum Digunakan)

Folder berikut sudah dibuat dan siap digunakan untuk development selanjutnya:

- **`widgets/common/`**: Untuk custom button, loading indicator, dll
- **`models/`**: Untuk data classes (User, Jadwal, Produk, dll)
- **`services/`**: Untuk API service, auth service, dll
- **`utils/`**: Untuk constants, helpers, validators
- **`config/`**: Untuk theme, app config

---

## ✅ Post-Restructure Checklist

- [x] Semua screens ada di `screens/[feature]/`
- [x] Routing terpusat di `routes/app_router.dart`
- [x] File lama sudah dihapus dari lib/ root
- [x] `flutter analyze`: 0 errors (hanya info deprecation warnings)
- [x] Naming convention: English naming untuk class & file
- [x] Dokumentasi updated (PROJECT_STRUCTURE.md)
- [ ] Test app bisa compile dan run (`flutter run`)
- [ ] Semua navigation works dengan benar

---

## 🔧 Maintenance Tips

1. **Import Pattern:**
   - Gunakan relative imports untuk files dalam 1 feature
   - Gunakan absolute imports untuk cross-feature
   ```dart
   // Relative (dalam 1 folder)
   import 'widgets/schedule_card.dart';
   
   // Absolute (cross-feature)
   import 'package:smart_santri_app/screens/home/home_screen.dart';
   ```

2. **Naming Convention:**
   - Screens: `*_screen.dart`
   - Widgets: `*_widget.dart`
   - Models: `*_model.dart`
   - Services: `*_service.dart`

3. **Git Workflow:**
   ```bash
   git add -A
   git commit -m "refactor: restructure project with professional folder architecture"
   ```

---

**Tanggal Restrukturisasi:** 29 Desember 2025  
**Flutter Version:** Dart SDK version: 3.6.0  
**Dependencies:** go_router, google_fonts
