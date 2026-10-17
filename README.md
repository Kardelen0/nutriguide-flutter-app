<div align="center">

# 🥗 NutriGuide - Premium Healthy Life & E-Commerce Platform

> **Uçtan Uca Figma Tasarım Sistemi, Flutter/Dart Mimarisi ve SQL Veritabanı Entegrasyonu**

![Flutter](https://img.shields.io/badge/Flutter-v3.22.2-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-v3.0-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Figma](https://img.shields.io/badge/Figma-Design_System-F24E1E?style=for-the-badge&logo=figma&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Relational_DB-CC292B?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=for-the-badge)

<br/>

┌────────────────────────────────────────────────────────────────────────┐
│                      🚨 SCREENSHOT / DEMO GIF HERE 🚨                 │
│                                                                        │
│  [ NutriGuide Dashboard & Responsive Mobile / Web Interfaces Preview ] │
└────────────────────────────────────────────────────────────────────────┘


</div>

---



## 📌 Proje Amacı & Genel Bakış

**NutriGuide**, kişiselleştirilmiş kalori/makro besin takibi ile sağlıklı yemek kâsesi (bowl) sipariş süreçlerini tek bir çatı altında toplayan uçtan uca mimariye sahip mobil ve web uygulama simülasyonudur.

Bu proje; **UI/UX Figma Design System** aşamasından başlayıp, **Flutter/Dart Mimarisi**, **State Management**, **SQL Veritabanı Bütünlüğü** ve **Responsive Web Simülasyonu** katmanlarını kapsayan kurumsal standartlarda geliştirilmiş bir yazılım mühendisliği çalışmasıdır.

---



## 🗺️ İçindekiler
- [📱 Proje Arayüz & Ekran Simülasyonları](#-proje-arayüz--ekran-simülasyonları)
- [🚀 Öne Çıkan Özellikler & Yetenekler](#-öne-çıkan-özellikler--yetenekler)
- [🎨 UI/UX Tasarım Sistemi (Figma)](#-uiux-tasarım-sistemi-figma)
- [🏗️ Sistem Mimarisi & Veri Akış Şeması](#️-sistem-mimarisi--veri-akış-şeması)
- [🛠️ Teknoloji Yığını (Tech Stack)](#️-teknoloji-yığını-tech-stack)
- [📂 Klasör Yapısı (Directory Tree)](#-klasör-yapısı-directory-tree)
- [🗄️ Veritabanı Mimarisi & SQL Kısıtlamaları](#️-veritabanı-mimarisi--sql-kısıtlamaları)
- [⚙️ Adım Adım Kurulum ve Kullanım Rehberi](#️-adım-adım-kurulum-ve-kullanım-rehberi)
- [🚨 Hata Yönetimi & Troubleshooting](#-hata-yönetimi--troubleshooting)
- [👤 İletişim](#-iletişim)

---



## 📱 Proje Arayüz & Ekran Simülasyonları

<blockquote>
  <b>💡 Arayüz Notu:</b> Tüm ekranlar iOS Human Interface Guidelines standartlarında 4 column simetrik grid ve Notch/Safe Area uyumu ile tasarlanmıştır.
</blockquote>

| 1. Discover Dashboard | 2. Detail & Calorie Card | 3. Cart & Receptive UI | 4. Figma Design Tokens |
| :---: | :---: | :---: | :---: |
| <img src="https://via.placeholder.com/280x560/10B981/FFFFFF?text=Discover+Screen" width="220"/> | <img src="https://via.placeholder.com/280x560/FF6B35/FFFFFF?text=Product+Detail" width="220"/> | <img src="https://via.placeholder.com/280x560/2C2C2C/FFFFFF?text=Cart+Dashboard" width="220"/> | <img src="https://via.placeholder.com/280x560/F24E1E/FFFFFF?text=Figma+Tokens" width="220"/> |

---



## 🚀 Öne Çıkan Özellikler & Yetenekler

| Modül / Özellik | Teknik Yaklaşım / Mimari | Durum |
| :--- | :--- | :---: |
| **Dinamik JSON Serileştirme** | `Product.fromJson` ve `Product.toJson` ile tip güvenli veri aktarımı | ✅ |
| **Anlık Metin Filtreleme** | Arama çubuğunda `toLowerCase()` ile büyük/küçük harf duyarsız arama | ✅ |
| **Performanslı Grid Mimarisi** | `GridView.builder` ile bellek dostu tembel yüklemeli (lazy loading) katalog | ✅ |
| **Tip Güvenli Rota Aktarımı** | Ekran geçişlerinde `Navigator.pushNamed` ve `Route Arguments` | ✅ |
| **Reaktif Sepet Yönetimi** | `StatefulWidget` ve `setState()` döngüleriyle anlık tutar hesaplama | ✅ |
| **Veri Bütünlüğü (Data Integrity)**| SQL veritabanı seviyesinde `UNIQUE KEY` kısıtlaması | ✅ |

---



## 🎨 UI/UX Tasarım Sistemi (Figma)

<blockquote>
  <b>🎨 Atomic Design Rules:</b> Tüm bileşenler Figma üzerinde Auto Layout (Shift + A) ve 8-pt Grid standartlarına tam bağlı kalınarak üretilmiştir.
</blockquote>



### Design Tokens & Color Palette

| Token Adı | Hex Kodu | Kullanım Alanı |
| :--- | :--- | :--- |
| **Primary Emerald** | `#10B981` | Ana eylem butonları, navigasyon vurguları |
| **Secondary Coral** | `#FF6B35` | Kalori sayaçları, uyarı ve indirim etiketleri |
| **Dark Neutral** | `#2C2C2C` | Tipografi başlıkları, kontrast metinler |
| **Warm Gourmet** | `#FFD1C0` | Arka plan gurme kart kaplamaları |
| **Card Surface** | `#FFFFFF` | Ürün kart zeminleri ve modallar |

---



## 🏗️ Sistem Mimarisi & Veri Akış Şeması

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



## 🛠️ Teknoloji Yığını (Tech Stack)

| Katman | Teknoloji | Sürüm |
| :--- | :--- | :--- |
| **UI/UX Design** | Figma (Auto Layout & Design Tokens) | Native |
| **Frontend Framework**| Flutter SDK | v3.22.2 |
| **Programming Language** | Dart | v3.0+ |
| **State Management** | Reaktif `setState` | Native |
| **Database Engine** | Relational SQL (MS SQL / PostgreSQL) | Engine v15+ |
| **Build & Tooling** | VS Code, Chrome Engine, Git | Latest |

---



## 📂 Klasör Yapısı (Directory Tree)

```bash
nutriguide-flutter-app/
├── .github/                        # GitHub Konfigürasyonları ve Şablonlar
│   ├── ISSUE_TEMPLATE/
│   │   ├── bug_report.md           # Hata Bildirimi Şablonu
│   │   └── feature_request.md      # Yeni Özellik İsteyi Şablonu
│   └── PULL_REQUEST_TEMPLATE.md    # PR Gönderim Şablonu
├── lib/                            # Flutter Uygulama Kaynak Kodları
│   ├── main.dart                   # Uygulama giriş noktası ve Rota (Routes) yönetimi
│   ├── models/
│   │   └── product_model.dart      # JSON Serileştirme & Veri Modeli
│   └── screens/
│       ├── discover_screen.dart    # Ana Sayfa / Katalog & Arama
│       ├── detail_screen.dart      # Ürün Detay & Kalori Kartı
│       └── cart_screen.dart        # Sepet & Fiyat Hesaplama
├── web/
│   └── index.html                  # Web Derleme ve Başlık Yapılandırması
├── screenshots/                    # Uygulama Görselleri ve Figma Ekran Kayıtları
├── .gitignore                      # Git Tarafından İzlenmeyecek Dosyalar
├── CODE_OF_CONDUCT.md              # Topluluk Davranış Kuralları
├── CONTRIBUTING.md                 # Katkıda Bulunma Rehberi
├── pubspec.yaml                    # Bağımlılıklar ve Asset Yapılandırması
└── README.md                       # Kurumsal Ana Dokümantasyon



🗄️ Veritabanı Mimarisi & SQL Kısıtlamaları
SQL
-- Müşteri Tablosu (Unique Key Kısıtlamalı)
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    Username VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL CONSTRAINT UQ_Customer_Email UNIQUE,
    CreatedAt DATETIME DEFAULT GETDATE()
);

-- Sipariş Detay Tablosu (Foreign Key Bağlantılı)
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    TotalPrice DECIMAL(10,2) NOT NULL,
    OrderDate DATETIME DEFAULT GETDATE()
);



⚙️ Adım Adım Kurulum ve Kullanım Rehberi
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



🚨 Hata Yönetimi & Troubleshooting
1. UNIQUE KEY Constraint Violation (SQL Hataları)
Problem: Test ortamında mükerrer e-posta veya kullanıcı adı kaydı girildiğinde veritabanı hata verir.

Çözüm: Test verileri sıfırlanırken aşağıdaki komut çalıştırılmalıdır:

SQL
TRUNCATE TABLE Customers;
2. Flutter Web Asset Yüklenme Hatası
Problem: pubspec.yaml dosyasındaki görsel yollarının web derlemesinde okunamaması.

Çözüm: Önbellek temizlenip paketler yeniden çekilmelidir:

Bash
flutter clean
flutter pub get


👤Geliştirici İletişim
Selinay Kardelen Bölge
Bilgisayar Mühendisliği Öğrencisi 
LinkedIn: https://www.linkedin.com/in/selinay-kardelen-bölge-1204b6295 
E-mail: kardelenbolge@gmail.com
