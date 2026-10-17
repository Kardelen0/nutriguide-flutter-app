# NutriGuide - Premium Healthy Life & Bowl E-Commerce Platform

![Flutter](https://img.shields.io/badge/Flutter-v3.22.2-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-v3.0-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Figma](https://img.shields.io/badge/Figma-Design_System-F24E1E?style=for-the-badge&logo=figma&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Relational_DB-CC292B?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

NutriGuide, kişiselleştirilmiş kalori/makro besin takibi ile sağlıklı yemek kâsesi (bowl) sipariş süreçlerini tek bir çatı altında toplayan uçtan uca mimariye sahip mobil ve web uygulamasıdır.

Bu proje; **UI/UX Figma Design System** aşamasından başlayıp, **Flutter/Dart Mimarisi**, **State Management**, **SQL Veritabanı Bütünlüğü** ve **Responsive Web Simülasyonu** katmanlarını kapsayan kurumsal standartlarda geliştirilmiş bir mühendislik çalışmasıdır.

---



##  İçindekiler
- [Proje Mimarisi & Öne Çıkan Özellikler](#-proje-mimarisi--öne-çıkan-özellikler)
- [UI/UX Tasarım Sistemi (Figma)](#-uiux-tasarım-sistemi-figma)
- [Yazılım & Veri Mimarisi](#-yazılım--veri-mimarisi)
- [Teknoloji Yığını (Tech Stack)](#-teknoloji-yığını-tech-stack)
- [Proje Klasör Yapısı](#-proje-klasör-yapısı)
- [Veritabanı Mimarisi & SQL Kısıtlamaları](#-veritabanı-mimarisi--sql-kısıtlamaları)
- [Kurulum ve Çalıştırma Rehberi](#-kurulum-ve-çalıştırma-rehberi)
- [Sık Karşılaşılan Problemler & Çözümler (Troubleshooting)](#-sık-karşılaşılan-problemler--çözümler-troubleshooting)
- [Geliştirme Süreci (Commit Geçmişi Simülasyonu)](#-geliştirme-süreci)
- [Geliştirici İletişim](#-geliştirici-iletişim)

---



##  Proje Mimarisi & Öne Çıkan Özellikler

- **Dinamik JSON Veri Modelleme:** `Product.fromJson` ve `Product.toJson` serileştirme mimarisi ile esnek tip güvenli veri yönetimi.
- **Anlık Metin Filtreleme Algoritması:** Arama çubuğu üzerinde büyük/küçük harf duyarsız (`toLowerCase()`) anlık arama ve listeleme performansı.
- **Performanslı Grid Mimarisi:** `GridView.builder` kullanılarak bellek dostu, tembel yüklemeli (lazy loading) dinamik ürün katalog görünümü.
- **Güvenli Rota ve Veri Aktarımı:** Ekranlar arası navigasyonda `Navigator.pushNamed` ve `Route Arguments` mimarisiyle type-safe parametre geçişi.
- **Reaktif Sepet Yönetimi:** `StatefulWidget` ve `setState()` döngüleriyle anlık sepet güncelleme, miktar yönetimi ve toplam fiyat hesaplama mekanizması.

---



## UI/UX Tasarım Sistemi (Figma)

Uygulamanın tüm görsel arayüzü ve bileşenleri **iOS Human Interface Guidelines** standartlarına uygun olarak atomic design prensipleriyle tasarlanmıştır.

- **Auto Layout Mimarisi:** Tüm mikro bileşenler ve ekran zeminleri dikey/yatay Auto Layout (`Shift + A`) ile esnek (responsive) kurgulanmıştır.
- **8-pt Grid Standardı:** Padding ve boşluk (gap) değerleri `8px, 16px, 24px` atomik tasarım mantığıyla kod standartlarına tam uyumlu yönetilmiştir.
- **Component & Variants:**
  - **İkon Kütüphanesi:** Outline Stroke yapılmış, `Combine as Variants` ile tek kütüphanede toplanmıştır.
  - **Logo Varyantı:** Light Mode (Beyaz zemin / Yeşil logo) ve Dark Mode (Yeşil zemin / Beyaz logo) tam uyumludur.
  - **Interactive Buttons:** Giriş butonunda `Default`, `Hover` ve `Active` etkileşim durumları tanımlıdır.
- **Color Palette & Tokens:**
  - **Primary:** `#10B981` (Zümrüt Yeşili)
  - **Secondary:** `#FF6B35` (Mercan/Turuncu)
  - **Text Primary:** `#2C2C2C` (Antrasit)
  - **Background 1:** `#FFD1C0` (Sıcak Gurme Zemin)
  - **Background 2:** `#FFFFFF` (Kanal / Kart Zemin)

---



## Yazılım & Veri Mimarisi

 projenin veri akış mimarisi ve bileşenler arası ilişkisi aşağıda özetlenmiştir:
 [ Figma Design System / Design Tokens ]
│
▼
[ Flutter UI Layer (GridView.builder & Screens) ]
│
▼
[ State Management & Search Filter (toLowerCase()) ]
│
▼
[ Data Layer / Model (Product.fromJson) ]
│
▼
[ Relational Database (SQL - UNIQUE Constraints) ]
---



## Teknoloji Yığını (Tech Stack)

| Katman | Teknoloji / Kütüphane | Kullanım Amacı |
| :--- | :--- | :--- |
| **UI/UX & Prototype** | Figma | Design System, Auto Layout, Smart Animate |
| **Frontend / Mobile** | Flutter SDK v3.22.2 / Dart | Cross-platform mobil ve web uygulama geliştirme |
| **State Management** | Native `setState` / Reaktif Döngü | Sepet ve filtreleme durum yönetimi |
| **Database** | Relational SQL (MS SQL / PostgreSQL) | Müşteri, Ürün ve Sipariş veri yönetimi |
| **Tools & Cloud** | VS Code, Chrome Engine, Git | Geliştirme ortamı ve versiyon kontrolü |




## Proje Klasör Yapısı

```bash
nutriguide-flutter-app/
├── lib/
│   ├── main.dart                   # Uygulama giriş noktası ve Rota (Routes) yönetimi
│   ├── models/
│   │   └── product_model.dart      # JSON Serileştirme & Veri Modeli
│   └── screens/
│       ├── discover_screen.dart    # Ana Sayfa / Katalog & Arama
│       ├── detail_screen.dart      # Ürün Detay & Kalori Kartı
│       └── cart_screen.dart        # Sepet & Fiyat Hesaplama
├── web/
│   └── index.html                  # Web Derleme ve Başlık Yapılandırması
├── screenshots/                    # Uygulama ve Figma Ekran Görüntüleri
├── pubspec.yaml                    # Bağımlılıklar ve Asset Yönetimi
└── README.md                       # Kurumsal Dokümantasyon



Veritabanı Mimarisi & SQL Kısıtlamaları:
Veri bütünlüğünü (Data Integrity) korumak adına veritabanı seviyesinde katı kısıtlamalar (Constraints) uygulanmıştır.

SQL
-- Müşteri Tablosu ve Unique Key Kısıtlaması
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    Username VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL CONSTRAINT UQ_Customer_Email UNIQUE,
    CreatedAt DATETIME DEFAULT GETDATE()
);

-- Sipariş Detay Tablosu
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    TotalPrice DECIMAL(10,2) NOT NULL,
    OrderDate DATETIME DEFAULT GETDATE()
);



Kurulum ve Çalıştırma Rehberi:
Aşağıdaki adımlar Windows ve macOS geliştirme ortamları için hazırlanmıştır.
1. Depoyu Klonlayın
Bash
git clone [https://github.com/kullanici-adi/nutriguide-flutter-app.git](https://github.com/kullanici-adi/nutriguide-flutter-app.git)
cd nutriguide-flutter-app
2. Bağımlılıkları Yükleyin
Bash
flutter pub get
3. Uygulamayı Chrome (Web) Üzerinde Çalıştırın
Bash
flutter run -d chrome


Sık Karşılaşılan Problemler & Çözümler (Troubleshooting):
1. UNIQUE KEY Constraint Violation (SQL Hataları)
Problem: Test ortamında mükerrer e-posta veya kullanıcı adı kaydı girildiğinde veritabanı hata verir.

Çözüm: Test verileri sıfırlanırken aşağıdaki komut ile tablo temizlenmelidir:

SQL
TRUNCATE TABLE Customers;
2. Flutter Web Asset/Görsel Yüklenememe Hatası
Problem: pubspec.yaml dosyasındaki görsel yollarının web derlemesinde okunamaması.

Çözüm: Proje dizininde önbellek temizlenmeli ve paketler tekrar çekilmelidir:

Bash
flutter clean
flutter pub get


Geliştirme Süreci:
Proje GitHub üzerinde anlamlı commit mesajları ile versiyonlanmıştır:

feat: initialize Flutter project structure and dependencies

style: setup Figma design tokens and Auto Layout guidelines

feat: implement Product.fromJson data serialization

feat: add dynamic search filter with case-insensitive logic

db: setup SQL Server schema and UNIQUE key constraints

docs: add comprehensive Turkish & English documentation



Geliştirici İletişim:
Selinay Kardelen Bölge
Bilgisayar Mühendisliği Öğrencisi | Mobile & Software Developer

LinkedIn: https://www.linkedin.com/in/selinay-kardelen-bölge-1204b6295 
E-posta: kardelenbolge@gmail.com 
