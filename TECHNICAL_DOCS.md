# Dokumentasi Teknis: `design_system`

## 1. Arsitektur & Struktur Direktori
*   **Tipe:** Flutter Package (Dependency terpisah, di-*import* via path lokal di `pubspec.yaml`).
*   **Entry Point:** `lib/design_system.dart` (*Barrel file* utama untuk export semua modul).
*   **Struktur `lib/src/`:**
    *   `assets/`: File *auto-generated* berisi konstanta path aset (ikon, gambar, animasi, suara).
    *   `theme/`: Objek `ThemeData` untuk Material 3 global (Light/Dark mode) & penyesuaian komponen bawaan Flutter.
    *   `tokens/`: Kumpulan nilai absolut UI/UX. Berisi *Colors*, *Sizes*, *Spacing*, dan *Radius*.
    *   `typography/`: Aturan tipografi (Font Family, Size, Weight, Style) yang di-*bundle* menjadi `ThemeExtension`.
    *   `utils/`: *Helper* dan *Extensions* (contoh: *extension* pada `BuildContext` untuk akses tema).
    *   `widgets/`: Komponen UI kustom (*Reusable components*) yang dibagi berdasarkan tipe (buttons, cards, fields, dsb).

## 2. Implementasi & Cara Membaca Kode (Deep Dive)

### a. Warna (Tokens)
Sistem warna dipisah menjadi dua layer agar tidak ada *hardcode* di komponen UI:
*   **Raw Palette (`app_pallete.dart`):** Menyimpan nilai Hex murni. Contoh: `AppPallete.surfaceBright = Color(0xFFFAF8FF)`. Jangan panggil ini langsung di UI.
*   **Semantik Warna (`app_colors.dart`):** Memberikan konteks fungsional dari palette. Contoh: `static const Color background = AppPallete.surfaceBright`. **Panggil file ini di UI.**

### b. Ukuran, Jarak & Radius
Menghindari angka magis (*magic numbers*).
*   **Dimensi/Margin/Padding (`app_sizes.dart`):** Format statis `AppSizes.sX`. Contoh: `AppSizes.s12` untuk ukuran `12.0`.
*   **Border Radius (`app_radius.dart`):** Radius komponen. Contoh: `AppRadius.rounded` (8.0px).

### c. Tipografi & Text Theme
*   Variabel dipecah: `app_font_size.dart`, `app_font_weight.dart`, `app_font_line_height.dart`.
*   Semuanya digabungkan dalam kelas `AppTextTheme` (sebagai `ThemeExtension`).
*   **Cara Baca di UI:** Daripada `Theme.of(context).textTheme...`, gunakan *extension helper* yang sudah dibuat: `context.text.bodyMediumSemiBold`. 

### d. Komponen Kustom (`widgets/`)
Komponen modular dan *stateless* (sebisa mungkin).
*   **Struktur:** Sub-folder berdasarkan jenis (`buttons/`, `inputs/`, `indicators/`, dll).
*   **Ekspor:** Semua di-*export* via `lib/src/widgets/index.dart`. Akses dari aplikasi utama cukup dengan import `design_system.dart`.

### e. Manajemen Aset
Aset fisik disimpan di folder `assets/` root.
*   **Mekanisme:** *Script generator* menginspeksi file fisik dan membuat kelas konstan.
*   **Cara Akses:** Gunakan konstanta *generated* seperti `AppImages.logo`. Rendering gunakan widget kustom: `AppLocalImage(AppImages.logo)`.

## 3. Panduan Modifikasi & Ekstensi

### Merubah / Menambah Warna
1.  Buka `lib/src/tokens/colors/app_pallete.dart`. Tambahkan/Ubah kode HEX asli.
2.  Buka `lib/src/tokens/colors/app_colors.dart`. Tambahkan/Ubah alias semantiknya dengan mereferensikan variabel dari `AppPallete`.
3.  Implementasikan `AppColors.<nama_baru>` pada widget atau `app_theme.dart`.

### Menambah Ukuran (Size/Spacing)
1.  Buka `lib/src/tokens/app_sizes.dart`.
2.  Deklarasikan konstanta statis baru (misal: `static const double s100 = 100.0;`).
3.  Simpan, *size* baru otomatis bisa dipakai di seluruh project via `AppSizes.s100`.

### Menyesuaikan Tipografi
1.  **Ganti Font Utama:** Ubah di `lib/src/typography/app_font_family.dart`. Pastikan font terdaftar di `pubspec.yaml` package ini.
2.  **Tambah Style Baru:**
    *   Buka `lib/src/typography/app_text_theme.dart`.
    *   Tambah properti (contoh: `final TextStyle titleCustom;`).
    *   Sertakan pada _constructor_, _copy-with_, dan _lerp_.
    *   Inisialisasi *style* tersebut di properti `lightTextTheme` / `darkTextTheme`.

### Membuat & Menambah Widget Baru
1.  Buat file `.dart` baru di direktori yang sesuai tipe di `lib/src/widgets/` (misal: `lib/src/widgets/buttons/custom_button.dart`).
2.  Implementasikan UI menggunakan token internal (`AppColors`, `AppSizes`, `AppRadius`, `context.text`). **Dilarang keras meletakkan nilai *hardcode* angka atau hex warna di sini.**
3.  Setelah selesai, tambahkan `export 'buttons/custom_button.dart';` pada file `lib/src/widgets/index.dart`.

### Memperbarui / Menambah Aset (Ikon & Gambar)
1.  Masukkan file SVG/PNG/Lottie baru ke sub-direktori dalam folder `assets/` (contoh: `assets/icons/new_icon.svg`).
2.  Buka terminal pada root `design_system`.
3.  Jalankan perintah generator: `dart script/generate_assets.dart`.
4.  Cek folder `lib/src/assets/`, class seperti `AppIcons` akan otomatis memuat `newIcon`.
## 4. Contoh Penggunaan (Code Snippets)

### a. Token (Warna, Ukuran, Radius)
Jangan pakai warna hex atau angka manual.
```dart
Container(
  padding: const EdgeInsets.all(AppSizes.s16),
  margin: const EdgeInsets.symmetric(horizontal: AppSizes.s24),
  decoration: BoxDecoration(
    color: AppColors.background,
    borderRadius: AppRadius.rounded, 
    // atau AppRadius.circular(AppSizes.s12)
  ),
  child: const SizedBox(),
);
```

### b. Tipografi (Context Extension)
Pakai extension `context.text` daripada `Theme.of(context).textTheme`.
```dart
Text(
  'Judul Halaman',
  style: context.text.titleLarge?.copyWith(
    color: AppColors.primary,
  ),
);
```

### c. Helpers & Utils (Ekstensi Tipe Data)
Gunakan *extension* bawaan untuk _formatting_ angka, tanggal, dsb.
```dart
// Format Mata Uang (num_ext.dart)
int harga = 50000;
print(harga.toIDR()); // Output: Rp50.000

// Format Waktu (duration_ext.dart / date_time_ext.dart)
// Contoh fiktif, sesuaikan dengan nama method di extension Anda:
DateTime.now().toFormattedDate(); 

// Context (context_ext.dart)
double lebar = context.screenWidth;
double tinggi = context.screenHeight;
```

### d. Komponen Widget Reusable
Langsung import `design_system.dart` dan pakai prefix/nama widget kustom.
```dart
// 1. Tombol
AppBackButton(
  onPressed: () => Navigator.pop(context),
);

// 2. Indikator Loading
const AppLoadingIndicator();

// 3. Menampilkan Gambar/Aset Lokal (Otomatis deteksi format SVG/PNG/Lottie)
AppImage(
  asset: AppImages.logo, // dari auto-generated class
  width: AppSizes.s48,
);
```
