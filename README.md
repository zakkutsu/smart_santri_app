# 🕌 Smart Santri Portal

<div align="center">

![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?logo=dart)
![License](https://img.shields.io/badge/License-MIT-green)
![Version](https://img.shields.io/badge/Version-1.0.0-blue)

**Portal Pendidikan & Kewirausahaan Terintegrasi untuk Pesantren Modern**

Menghubungkan Akademik Santri dengan Potensi Ekonomi **Santripreneur**

[Fitur](#-fitur-utama) • [Instalasi](#-instalasi) • [Teknologi](#-teknologi) • [Roadmap](#-roadmap) • [Kontribusi](#-kontribusi)

</div>

---

## 📖 Tentang Aplikasi

**Smart Santri Portal** adalah solusi digital komprehensif yang dirancang khusus untuk modernisasi manajemen pesantren. Aplikasi ini mengintegrasikan sistem manajemen pembelajaran santri dengan platform kewirausahaan, menciptakan ekosistem pesantren yang modern, produktif, dan mandiri.

Aplikasi ini menghubungkan aspek akademik santri (kajian kitab, tahfidz, e-learning) dengan potensi ekonomi melalui **Santripreneur** - marketplace karya santri yang terintegrasi dengan konsep *Rumah UMKM*.

### 🎯 Visi & Misi

**Visi:**
Menjadi lembaga pendidikan Islam terdepan yang mengintegrasikan teknologi digital dengan nilai-nilai pesantren untuk mencetak generasi yang berakhlak mulia, cerdas, dan mandiri.

**Misi:**
- Memberikan pendidikan agama yang berkualitas
- Memfasilitasi pembelajaran dengan teknologi modern
- Membina karakter santri yang mandiri dan berakhlak
- Mengembangkan potensi santri di bidang akademik dan non-akademik
- Membangun ekosistem pesantren yang produktif dan inovatif

---

## ✨ Fitur Utama

### 📚 **Portal Akademik**

**Jadwal Ngaji (CRUD)**
- ✅ Manajemen jadwal kajian kitab kuning lengkap
- ✅ Create, Read, Update, Delete jadwal pengajian
- ✅ Informasi detail: nama kitab, waktu kajian, nama pengajar
- ✅ Dialog konfirmasi untuk operasi hapus
- ✅ Form validation untuk input data
- ✅ Floating Action Button untuk akses cepat

**Cek Hafalan Tahfidz**
- ✅ Monitoring progress hafalan Al-Qur'an real-time
- ✅ Visualisasi grafik progress dengan persentase dinamis
- ✅ Progress bar dengan indikator visual
- ✅ Riwayat setoran hafalan lengkap
- ✅ Status evaluasi 3 tingkat:
  - 🟢 **Lancar** - Hafalan sempurna
  - 🟠 **Perlu Murojaah** - Perlu pengulangan
  - ⚪ **Belum Setor** - Belum disetorkan
- ✅ Target hafalan per juz dengan tracking
- ✅ Color-coded status untuk kemudahan monitoring

**E-Learning**
- ✅ Akses materi digital multimedia (Video, PDF, Audio)
- ✅ Kategori pembelajaran terstruktur:
  - 🕌 Fiqih & Ibadah (video tutorial, e-book)
  - 🔤 Bahasa Arab (audio conversation, kosa kata)
  - 📖 Tafsir & Hadits
- ✅ Icon tipe file untuk identifikasi cepat
- ✅ Informasi durasi/halaman konten
- ✅ Download button untuk akses offline
- ✅ Card-based UI untuk kemudahan navigasi

**SPP & Infaq**
- ✅ Dashboard tagihan bulanan dengan status
- ✅ Reminder jatuh tempo pembayaran otomatis
- ✅ Riwayat transaksi lengkap dengan timestamp
- ✅ Status pembayaran real-time (Lunas/Belum Bayar)
- ✅ Informasi detail: nominal, tanggal, jenis pembayaran
- ✅ Button "Bayar Sekarang" untuk quick action
- ✅ Kartu tagihan dengan highlight visual
- ✅ Integration ready untuk payment gateway

### 💼 **Unit Usaha Santri (Santripreneur)**

**Marketplace Karya Santri**
- ✅ Katalog produk lengkap dengan 4 kategori:
  - 🎨 **Kerajinan Tangan**: Kaligrafi ukir kayu, lukisan kaligrafi
  - 🍞 **Produk Kuliner**: Roti Al-Barokah, kue tradisional
  - 👕 **Fashion Muslim**: Peci rajut manual, mukena bordir
  - 💻 **Jasa Kreatif**: Desain poster, editing video
- ✅ Profil pembuat/pengrajin untuk setiap produk
- ✅ Informasi harga dengan format Rupiah
- ✅ Label "Karya: [Nama Kelas/Ekskul]"
- ✅ Button "Beli" untuk pemesanan
- ✅ Banner motivasi: *"Dari Santri, Oleh Santri, Untuk Mandiri"*
- ✅ Color-coded category indicators
- ✅ Integrasi konsep *Rumah UMKM*

### 🎨 **Desain & User Experience**

**Visual Design**
- ✅ **Tema Warna Khas Pesantren:**
  - 🟢 Hijau Tua (#1B5E20) - Nilai religius & kesejahteraan
  - 🟡 Emas (#F9A825) - Kemandirian ekonomi & prestise
- ✅ Material Design 3 implementation
- ✅ Google Fonts Poppins untuk typography modern
- ✅ Gradient headers untuk visual hierarchy
- ✅ Shadow & elevation untuk depth

**Responsive Layout**
- ✅ Adaptive grid system:
  - 💻 **Desktop** (>600px): 4 kolom grid
  - 📱 **Mobile** (≤600px): 2 kolom grid
- ✅ LayoutBuilder untuk deteksi viewport
- ✅ Dynamic aspect ratio adjustment
- ✅ Flexible containers
- ✅ Optimized untuk semua platform (Web, Android, iOS, Desktop)

**Navigation & Components**
- ✅ App footer dengan quick links
- ✅ Icon-based menu navigation
- ✅ Back button di semua sub-pages
- ✅ Smooth transitions antar halaman
- ✅ Consistent AppBar styling
- ✅ Card-based content presentation

### 🗂️ **Additional Pages**

**Informasi & Support**
- ✅ **Tentang Kami**: Visi, misi, nilai-nilai pesantren
- ✅ **Cara Menggunakan**: Panduan step-by-step fitur
- ✅ **Mitra**: Daftar partner & kolaborasi
- ✅ **Bantuan**: FAQ & contact support
- ✅ Footer navigation untuk akses mudah

---

## 🛠️ Teknologi

### Core Stack
- **Flutter SDK 3.9.2** - Cross-platform framework
- **Dart 3.x** - Programming language
- **Material Design 3** - Modern UI design system

### Dependencies
```yaml
dependencies:
  flutter:
    sdk: flutter
  go_router: ^12.0.0              # Declarative routing system
  google_fonts: ^6.1.0            # Custom fonts (Poppins)
  cupertino_icons: ^1.0.8         # iOS-style icons

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^5.0.0           # Code quality & linting
```

### Architecture
- **Widget-based Architecture** - Modular component system
- **Feature-based Structure** - Organized by functional modules
- **StatefulWidget & StatelessWidget** - Built-in state management
- **setState** - Local state management untuk CRUD operations
- **Repository Pattern Ready** - Siap untuk backend integration

### Routing System
**go_router** - Declarative routing dengan clean URL structure:
```dart
/                    # Home Screen (Dashboard)
/jadwal              # Schedule Management
/hafalan             # Tahfidz Progress
/elearning           # Learning Materials
/spp                 # Payment Information
/unit-usaha          # Santripreneur Marketplace
/tentang             # About Page
/panduan             # How to Use Guide
/mitra               # Partners List
/bantuan             # Help & Support
```

---

## 🚀 Instalasi

### Prerequisites
- **Flutter SDK** >= 3.9.2
- **Dart SDK** >= 3.0.0 (included with Flutter)
- **IDE:** VS Code / Android Studio / IntelliJ IDEA
- **Git** untuk version control
- **Chrome** (untuk web testing) atau emulator Android/iOS

### Step-by-Step

1. **Clone Repository**
   ```bash
   git clone https://github.com/username/smart_santri_app.git
   cd smart_santri_app
   ```

2. **Install Dependencies**
   ```bash
   flutter pub get
   ```

3. **Verifikasi Instalasi**
   ```bash
   flutter doctor
   ```
   *Pastikan semua checklist hijau untuk platform yang ingin digunakan*

4. **Run Application**
   
   **Web (Chrome):**
   ```bash
   flutter run -d chrome
   ```
   
   **Mobile (Android):**
   ```bash
   # List available devices
   flutter devices
   
   # Run on specific device
   flutter run -d <device-id>
   ```
   
   **iOS Simulator (macOS only):**
   ```bash
   flutter run -d ios
   ```
   
   **Desktop (Windows):**
   ```bash
   flutter run -d windows
   ```
   
   **Desktop (macOS):**
   ```bash
   flutter run -d macos
   ```
   
   **Desktop (Linux):**
   ```bash
   flutter run -d linux
   ```

5. **Build for Production**
   ```bash
   # Web (output: build/web/)
   flutter build web --release
   
   # Android APK
   flutter build apk --release
   
   # Android App Bundle (untuk Google Play)
   flutter build appbundle --release
   
   # iOS (requires macOS & Xcode)
   flutter build ios --release
   
   # Windows Desktop
   flutter build windows --release
   
   # macOS Desktop
   flutter build macos --release
   
   # Linux Desktop
   flutter build linux --release
   ```

### Troubleshooting
```bash
# Clean build cache
flutter clean

# Repair Flutter installation
flutter doctor --android-licenses

# Update dependencies
flutter pub upgrade
```

---

## 📁 Struktur Project

```
smart_santri_app/
├── lib/
│   ├── main.dart                       # Entry point + Theme config
│   ├── config/                         # App configuration (future)
│   ├── routes/
│   │   └── app_router.dart             # Centralized routing (10 routes)
│   ├── screens/                        # Feature-based screens
│   │   ├── home/
│   │   │   └── home_screen.dart        # Dashboard + responsive grid
│   │   ├── schedule/
│   │   │   └── schedule_screen.dart    # CRUD Jadwal Ngaji
│   │   ├── tahfidz/
│   │   │   └── tahfidz_screen.dart     # Progress hafalan + grafik
│   │   ├── elearning/
│   │   │   └── elearning_screen.dart   # Materi digital
│   │   ├── payment/
│   │   │   └── payment_screen.dart     # SPP & Infaq
│   │   ├── business/
│   │   │   └── business_screen.dart    # Santripreneur marketplace
│   │   └── about/                      # Information pages
│   │       ├── about_screen.dart       # Visi, misi, nilai
│   │       ├── how_to_use_screen.dart  # Panduan penggunaan
│   │       ├── partners_screen.dart    # Daftar mitra
│   │       └── help_screen.dart        # FAQ & support
│   └── widgets/
│       └── common/
│           └── app_footer.dart         # Reusable footer component
├── android/                            # Android native configuration
├── ios/                               # iOS native configuration
├── web/                               # Web platform files
├── windows/                           # Windows desktop configuration
├── linux/                             # Linux desktop configuration
├── macos/                             # macOS desktop configuration
├── test/
│   └── widget_test.dart               # Widget testing
├── analysis_options.yaml              # Linting rules
├── pubspec.yaml                       # Dependencies & assets
├── PROJECT_STRUCTURE.md               # Detailed structure docs
└── README.md                          # Documentation (this file)
```

**Total:** 10 screens • 1 reusable widget • 10+ routes • 6 dependencies

---

## 🎮 Cara Menggunakan

### Navigasi Utama

**Dashboard Pesantren**
1. Buka aplikasi → Tampil halaman home
2. Lihat profil pesantren "Ponpes Al-Hidayah"
3. Grid menu menampilkan 4 layanan akademik utama

### Fitur-fitur Spesifik

**📖 Mengelola Jadwal Ngaji**
1. Klik menu **"Jadwal Ngaji"** di dashboard
2. Lihat list jadwal kajian kitab yang sedang berjalan
3. **Tambah Jadwal:**
   - Tekan tombol **+** (Floating Action Button)
   - Isi form: Nama Kitab, Waktu, Pengajar
   - Klik "Simpan" → Jadwal ditambahkan
4. **Hapus Jadwal:**
   - Klik icon **🗑️** pada item jadwal
   - Konfirmasi penghapusan → Jadwal dihapus

**📊 Monitoring Hafalan**
1. Klik menu **"Cek Hafalan"**
2. Lihat progress bar dengan persentase hafalan
3. Review list setoran dengan status:
   - 🟢 **Lancar** - Lanjut ke surah berikutnya
   - 🟠 **Perlu Murojaah** - Perlu diulang
   - ⚪ **Belum Setor** - Belum ada setoran
4. Target hafalan ditampilkan di header

**🎓 Mengakses E-Learning**
1. Klik menu **"E-Learning"**
2. Pilih kategori: **Fiqih & Ibadah** atau **Bahasa Arab**
3. Klik materi untuk akses detail
4. Klik icon **download** untuk akses offline (future feature)

**💳 Cek Pembayaran**
1. Klik menu **"SPP & Infaq"**
2. Lihat kartu tagihan bulan ini dengan:
   - Nominal tagihan
   - Tanggal jatuh tempo
   - Status pembayaran
3. Klik **"Bayar Sekarang"** (integrasi payment gateway - planned)
4. Scroll down untuk melihat riwayat transaksi

**🛒 Belanja Produk Santri**
1. Klik banner **"Unit Usaha Santri"** di home
2. Browse katalog produk karya santri
3. Lihat detail produk:
   - Nama produk
   - Harga
   - Informasi pengrajin (kelas/ekskul)
4. Klik **"Beli"** untuk pemesanan (checkout - planned)

**ℹ️ Informasi & Bantuan**
1. Scroll ke footer halaman home
2. Klik link quick navigation:
   - **Tentang Kami** - Visi, misi pesantren
   - **Cara Menggunakan** - Panduan lengkap
   - **Mitra** - Partner & kolaborasi
   - **Bantuan** - FAQ & support contact

---

## 🗺️ Roadmap

### ✅ Version 1.0.0 (Current) - Core Features Complete
- [x] Setup project structure & routing
- [x] Implementasi responsive home screen
- [x] CRUD Jadwal Ngaji dengan validasi
- [x] Progress Tahfidz dengan visual tracking
- [x] E-Learning content viewer
- [x] Payment history & reminder
- [x] Santripreneur marketplace
- [x] Footer navigation & info pages
- [x] Material Design 3 theming
- [x] Multi-platform support (Web, Mobile, Desktop)

### 🚧 Version 1.5.0 (Q1 2026) - Backend Integration
- [ ] **Firebase Setup**
  - Firebase Authentication (Email/Password)
  - Firestore Database untuk data santri
  - Firebase Storage untuk assets
- [ ] **User Management**
  - Login/Register system
  - Role management (Admin, Pengajar, Santri)
  - Profile management
- [ ] **Real-time Data**
  - Sync jadwal ngaji otomatis
  - Update progress tahfidz real-time
  - Notifikasi push

### 🔮 Version 2.0.0 (Q2 2026) - Enhanced Learning
- [ ] **Live Streaming**
  - Kajian online live
  - Recording & replay
  - Chat interaktif
- [ ] **Advanced Tahfidz**
  - Audio recording setoran
  - AI-powered evaluation
  - Leaderboard santri terbaik
- [ ] **E-Learning Pro**
  - Video streaming optimization
  - Quiz & assessment
  - Certificate generation
  - Progress tracking per santri

### 🌟 Version 3.0.0 (Q3 2026) - Full Ecosystem
- [ ] **Payment Integration**
  - Midtrans/Xendit gateway
  - Auto-generate invoice
  - Payment history export
  - Reminder automation
- [ ] **Santripreneur Marketplace Pro**
  - Shopping cart system
  - Order management
  - Shipping integration (JNE, J&T)
  - Review & rating produk
  - Seller dashboard analytics
- [ ] **Parent Dashboard**
  - Monitoring akademik anak
  - Payment tracking
  - Direct communication dengan pengajar
- [ ] **Advanced Features**
  - Multi-language (ID, AR, EN)
  - Offline mode
  - Dark mode theme
  - Export reports (PDF)

### 💡 Version 4.0.0 (Q4 2026) - AI Integration
- [ ] Chatbot AI untuk Q&A
- [ ] Personalized learning paths
- [ ] Predictive analytics untuk progress santri
- [ ] Voice assistant untuk hafalan
- [ ] Smart scheduling optimization

---

## 🔒 Security & Privacy

### Implemented
- ✅ Input validation pada semua forms
- ✅ Safe navigation dengan go_router
- ✅ Widget-level error handling

### To Implement (Backend Phase)
- ⏳ **Authentication & Authorization**
  - Secure login dengan Firebase Auth
  - Role-based access control (RBAC)
  - Session management & token refresh
- ⏳ **Data Protection**
  - Encryption untuk data sensitif
  - Secure API communication (HTTPS)
  - Data backup & recovery
- ⏳ **Privacy Compliance**
  - GDPR compliance
  - Data retention policy
  - User consent management
- ⏳ **Security Best Practices**
  - Rate limiting
  - Input sanitization
  - SQL injection prevention
  - XSS protection

---

## 🧪 Testing

### Current Status
- ✅ Manual testing semua fitur
- ✅ Route navigation testing
- ✅ CRUD operations validation
- ✅ Responsive layout testing (web, mobile)
- ✅ Cross-platform compatibility check

### Test Commands
```bash
# Run all tests
flutter test

# Run with coverage report
flutter test --coverage

# Run integration tests
flutter test integration_test/

# Generate coverage HTML
genhtml coverage/lcov.info -o coverage/html
```

### Test Coverage Goals
**Target: 80%+ coverage**

- [ ] **Unit Tests**
  - Route configuration
  - Data models
  - Helper functions
  - Business logic

- [ ] **Widget Tests**
  - Home screen grid layout
  - Schedule CRUD operations
  - Tahfidz progress display
  - E-Learning content list
  - Payment history
  - Business catalog

- [ ] **Integration Tests**
  - Complete user flows
  - Navigation scenarios
  - Form submissions
  - Error handling

### Recommended Test Structure
```
test/
├── unit/
│   ├── routes_test.dart
│   └── models_test.dart
├── widget/
│   ├── home_screen_test.dart
│   ├── schedule_screen_test.dart
│   ├── tahfidz_screen_test.dart
│   └── business_screen_test.dart
└── integration/
    └── app_test.dart
```

---

## 🤝 Kontribusi

Kami terbuka untuk kontribusi dari siapa saja! Berikut cara berkontribusi:

### Langkah-langkah Kontribusi

1. **Fork** repository ini
2. **Clone** fork Anda
   ```bash
   git clone https://github.com/YOUR_USERNAME/smart_santri_app.git
   cd smart_santri_app
   ```
3. **Create branch** untuk fitur baru
   ```bash
   git checkout -b feature/AmazingFeature
   ```
4. **Commit** perubahan Anda
   ```bash
   git commit -m "feat: Add some AmazingFeature"
   ```
5. **Push** ke branch
   ```bash
   git push origin feature/AmazingFeature
   ```
6. **Open Pull Request** di GitHub

### Commit Convention

Gunakan conventional commits untuk pesan commit:

```
feat: Menambahkan fitur baru
fix: Memperbaiki bug
docs: Update dokumentasi
style: Perubahan formatting (tidak mengubah logic)
refactor: Refactoring code
test: Menambahkan atau update test
chore: Update dependencies atau maintenance
perf: Performance improvement
ci: CI/CD configuration
```

**Contoh:**
```bash
git commit -m "feat: add prayer time schedule feature"
git commit -m "fix: resolve tahfidz progress bar overflow"
git commit -m "docs: update installation guide in README"
```

### Code Style Guidelines

- Follow Dart & Flutter best practices
- Gunakan `const` constructor untuk widget statis
- Pisahkan widget yang reusable ke folder `widgets/`
- Tambahkan comments untuk logic kompleks
- Format code dengan `flutter format .`
- Jalankan `flutter analyze` sebelum commit

### Areas for Contribution

**Prioritas Tinggi:**
- [ ] Unit & widget tests
- [ ] Firebase integration
- [ ] Payment gateway implementation
- [ ] Push notifications
- [ ] Dokumentasi API

**Prioritas Sedang:**
- [ ] UI/UX improvements
- [ ] Performance optimization
- [ ] Accessibility features
- [ ] Localization (i18n)
- [ ] Dark mode theme

**Good First Issues:**
- [ ] Typo fixes
- [ ] Documentation improvements
- [ ] Add more dummy data
- [ ] UI polish & animations
- [ ] Add more categories

---

## 📄 License

Project ini menggunakan **MIT License** - bebas digunakan untuk keperluan komersial maupun non-komersial.

```
MIT License

Copyright (c) 2025 Smart Santri Development Team

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

---

## 👥 Tim Pengembang

**Smart Santri Development Team**
- Ponpes Al-Hidayah - Technology Division
- Modul Smart Village - Peningkatan Perekonomian Masyarakat Desa

**Contributors:**
- Lead Developer: [Your Name]
- UI/UX Designer: [Designer Name]
- Backend Engineer: [Backend Name]
- QA Tester: [Tester Name]

---

## 📞 Kontak & Support

**Ponpes Al-Hidayah**
- 📧 Email: info@alhidayah.com
- 🌐 Website: https://smartsantri.id (placeholder)
- 📱 WhatsApp: +62 812-3456-7890
- 📍 Alamat: Jl. Pesantren No. 123, Kota, Provinsi

**Developer Team**
- 💻 GitHub Issues: [Report Bug](https://github.com/username/smart_santri_app/issues)
- 💬 Discussions: [Feature Request](https://github.com/username/smart_santri_app/discussions)
- 📧 Developer Email: dev@smartsantri.id (placeholder)

**Social Media**
- Instagram: [@smartsantri.official](https://instagram.com/smartsantri.official)
- Facebook: [Smart Santri Portal](https://facebook.com/smartsantri)
- YouTube: [Smart Santri Channel](https://youtube.com/@smartsantri)

---

## 📊 Project Statistics

- **Version:** 1.0.0
- **Total Screens:** 10
- **Total Routes:** 10+ (public routes)
- **Code Lines:** ~3,500+
- **Dependencies:** 3 core packages + 2 dev packages
- **Supported Platforms:** ✅ Web • ✅ Android • ✅ iOS • ✅ Windows • ✅ macOS • ✅ Linux
- **Flutter Version:** 3.9.2
- **Dart Version:** 3.x
- **License:** MIT
- **Development Status:** 🟢 Active Development
- **Last Updated:** December 30, 2025

**File Breakdown:**
- `.dart` files: 11
- Configuration files: 5
- Documentation: 2

**Platform Support:**
```
✅ Android (SDK 21+)
✅ iOS (11.0+)
✅ Web (Modern browsers)
✅ Windows (10+)
✅ macOS (10.14+)
✅ Linux (64-bit)
```

---

## 🙏 Acknowledgments

Terima kasih kepada:
- **Flutter Team** - Framework yang luar biasa untuk cross-platform development
- **go_router** - Solusi routing yang clean dan powerful
- **Google Fonts** - Typography Poppins yang indah
- **Ponpes Al-Hidayah** - Inspirasi dan dukungan penuh untuk digitalisasi pesantren
- **Komunitas Flutter Indonesia** - Knowledge sharing dan support
- **Open Source Community** - Kontribusi tools dan packages
- **Smart Village Initiative** - Visi integrasi teknologi untuk kemajuan desa
- **Santri & Pengajar** - Feedback dan testing aplikasi

**Special Thanks:**
- Semua pesantren yang telah mengadopsi teknologi digital
- Santripreneur yang terus berkarya dan berinovasi
- Parent & wali santri yang mendukung modernisasi pendidikan
- Donatur & stakeholder yang membantu pengembangan aplikasi

---

<div align="center">

**Dibuat dengan ❤️ untuk Kemajuan Pesantren Indonesia**

*"Mencetak Generasi Berakhlak & Mandiri"*

⭐ Star project ini jika bermanfaat! ⭐

[⬆ Kembali ke atas](#-smart-santri-portal)

---

**© 2025 Smart Santri Portal - Ponpes Al-Hidayah**

</div>
