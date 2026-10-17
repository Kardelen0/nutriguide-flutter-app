<div align="center">

#  NutriGuide - Premium Healthy Life & E-Commerce Platform

> **Uçtan Uca Figma Tasarım Sistemi, Flutter/Dart Mimarisi ve SQL Veritabanı Entegrasyonu**

![Flutter](https://img.shields.io/badge/Flutter-v3.22.2-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-v3.0-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Figma](https://img.shields.io/badge/Figma-Design_System-F24E1E?style=for-the-badge&logo=figma&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Relational_DB-CC292B?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![Build](https://img.shields.io/badge/Build-Passing-brightgreen?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

</div>

---



>  **PROJE ÖZETİ**  
> NutriGuide, kişiselleştirilmiş kalori/makro besin takibi ile sağlıklı yemek kâsesi (bowl) sipariş süreçlerini tek bir çatı altında toplayan uçtan uca mimariye sahip mobil ve web uygulama simülasyonudur.

---



##  İçindekiler
- [ Proje Arayüz & Ekran Simülasyonları](#-proje-arayüz--ekran-simülasyonları)
- [ Mimari Vurgular & Öne Çıkan Özellikler](#-mimari-vurgular--öne-çıkan-özellikler)
- [ UI/UX Tasarım Sistemi & Design Tokens (Figma)](#-uiux-tasarım-sistemi--design-tokens-figma)
- [ Sistem Mimarisi & Veri Akış Şeması](#️-sistem-mimarisi--veri-akış-şeması)
- [ Teknoloji Yığını (Tech Stack)](#️-teknoloji-yığını-tech-stack)
- [ Proje Klasör Dizini](#-proje-klasör-dizini)
- [ Veritabanı Mimarisi & Constraint Kısıtlamaları](#️-veritabanı-mimarisi--constraint-kısıtlamaları)
- [ Kurulum ve Çalıştırma Rehberi](#-kurulum-ve-çalıştırma-rehberi)
- [ Hata Yönetimi & Troubleshooting](#-hata-yönetimi--troubleshooting)
- [ Git Commit & Sürüm Kontrol Geçmişi](#-git-commit--sürüm-kontrol-geçmişi)
- [ Geliştirici Kartı](#-geliştirici-kartı)

---



##  Proje Arayüz & Ekran Simülasyonları

<blockquote>
  <b> Arayüz Notu:</b> Tüm ekranlar iOS Human Interface Guidelines standartlarında 4 column simetrik grid ve Notch/Safe Area uyumu ile tasarlanmıştır.
</blockquote>

| 1. Discover Dashboard | 2. Detail & Calorie Card | 3. Cart & Receptive UI | 4. Figma Design Tokens |
| :---: | :---: | :---: | :---: |
| <img src="https://via.placeholder.com/280x560/10B981/FFFFFF?text=Discover+Screen" width="220"/> | <img src="https://via.placeholder.com/280x560/FF6B35/FFFFFF?text=Product+Detail" width="220"/> | <img src="https://via.placeholder.com/280x560/2C2C2C/FFFFFF?text=Cart+Dashboard" width="220"/> | <img src="https://via.placeholder.com/280x560/F24E1E/FFFFFF?text=Figma+Tokens" width="220"/> |

---



##  Mimari Vurgular & Öne Çıkan Özellikler

<blockquote>



###  Core Capabilities
* **Dinamik JSON Veri Modelleme:** `Product.fromJson` ve `Product.toJson` serileştirme mimarisi ile esnek ve tip güvenli (type-safe) veri yönetimi.
* **Anlık Metin Filtreleme Algoritması:** Arama çubuğu üzerinden girilen metinleri anlık yakalayan, büyük/küçük harf duyarsız (`toLowerCase()`) yüksek performanslı liste filtreleme.
* **Performanslı Grid Mimarisi:** `GridView.builder` kullanılarak bellek dostu, tembel yüklemeli (lazy loading) dinamik ürün katalog görünümü.
* **Güvenli Rota ve Veri Aktarımı:** Ekranlar arası navigasyonda `Navigator.pushNamed` ve `Route Arguments` mimarisiyle parametre geçişi.
* **Reaktif Sepet Yönetimi:** `StatefulWidget` ve `setState()` döngüleriyle anlık sepet güncelleme, miktar artırma/azaltma ve toplam fiyat hesaplama mekanizması.

</blockquote>

---



##  UI/UX Tasarım Sistemi & Design Tokens (Figma)

<blockquote>
  <b> Atomic Design Rules:</b> Tüm bileşenler Figma üzerinde Auto Layout (Shift + A) ve 8-pt Grid standartlarına tam bağlı kalınarak üretilmiştir.
</blockquote>



### Design Tokens & Color Palette

| Token Adı | Renk Kodu | Rolü & Kullanım Alanı |
| :--- | :--- | :--- |
| **Primary Emerald** | `#10B981` | Ana eylem butonları, navigasyon vurguları |
| **Secondary Coral** | `#FF6B35` | Kalori sayaçları, uyarı ve indirim etiketleri |
| **Dark Neutral** | `#2C2C2C` | Tipografi başlıkları, kontrast metinler |
| **Warm Gourmet** | `#FFD1C0` | Arka plan gurme kart kaplamaları |
| **Card Surface** | `#FFFFFF` | Ürün kart zeminleri ve pop-up modallar |

---



<pre>
┌───────────────────────────────────────────────────────────────────┐
│                   Figma UI/UX Design System                       │
│            (Auto Layout, 8-pt Grid, Component Variants)           │
└─────────────────────────────────┬─────────────────────────────────┘
                                  │
                                  ▼
┌───────────────────────────────────────────────────────────────────┐
│                   Flutter UI & Presentation Layer                 │
│           (GridView.builder, Custom Search, Screen Routes)        │
└─────────────────────────────────┬─────────────────────────────────┘
                                  │
                                  ▼
┌───────────────────────────────────────────────────────────────────┐
│                  State Management & Reactive Engine               │
│            (setState Loops, Cart Calculations, Navigation)        │
└─────────────────────────────────┬─────────────────────────────────┘
                                  │
                                  ▼
┌───────────────────────────────────────────────────────────────────┐
│                    Data & Serialization Layer                     │
│          (Product.fromJson, Product.toJson, JSON Mapping)         │
└─────────────────────────────────┬─────────────────────────────────┘
                                  │
                                  ▼
┌───────────────────────────────────────────────────────────────────┐
│                Relational Database (SQL Core Engine)              │
│       (UNIQUE Key Constraints, Transactional Data Integrity)      │
└───────────────────────────────────────────────────────────────────┘
</pre>
---



##  Teknoloji Yığını (Tech Stack)

| Katman | Teknoloji | Sürüm | Açıklama |
| :--- | :--- | :--- | :--- |
| **UI/UX Design** | Figma | Native | Design System, Interactive Prototypes, Auto Layout |
| **Frontend Framework**| Flutter | v3.22.2 | Cross-Platform Mobile & Web Runtime Engine |
| **Language** | Dart | v3.0+ | Strongly Typed & Object-Oriented Language |
| **State Management** | Reaktif `setState` | Native | Local state and cart management loops |
| **Database** | SQL Engine | Relational | RDBMS, Entity Integrity, UNIQUE Constraints |
| **Tooling & IDE** | VS Code / Git | Latest | Version Control, Chrome Web Debugger |

---



##  Proje Klasör Dizini

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



Veritabanı Mimarisi & Constraint Kısıtlamaları
SQL
-- 1. Müşteri Tablosu (Unique Key Kısıtlamalı)
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    Username VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL CONSTRAINT UQ_Customer_Email UNIQUE,
    CreatedAt DATETIME DEFAULT GETDATE()
);

-- 2. Ürün Katalog Tablosu
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Calories INT NOT NULL
);

-- 3. Sipariş Detay Tablosu (Foreign Key Bağlantılı)
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    TotalPrice DECIMAL(10,2) NOT NULL,
    OrderDate DATETIME DEFAULT GETDATE()
);



 Kurulum ve Çalıştırma Rehberi
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
 Hata Yönetimi & Troubleshooting
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
 Git Commit & Sürüm Kontrol Geçmişi
Bash
git commit -m "feat: initialize Flutter project structure and dependencies"
git commit -m "style: setup Figma design tokens and Auto Layout guidelines"
git commit -m "feat: implement Product.fromJson data serialization"
git commit -m "feat: add dynamic search filter with case-insensitive logic"
git commit -m "db: setup SQL Server schema and UNIQUE key constraints"
git commit -m "docs: add comprehensive Turkish & English documentation"


 Geliştirici:
Selinay Kardelen Bölge
Bilgisayar Mühendisliği 
LinkedIn: https://www.linkedin.com/in/selinay-kardelen-bölge-1204b6295 
E-posta: kardelenbolge@gmail.com
