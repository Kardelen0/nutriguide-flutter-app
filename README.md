<div align="center">

# 🥗 NutriGuide - Premium Healthy Life UI/UX & Database Architecture

> **Uçtan Uca Figma Tasarım Sistemi, UX Mimarisi ve SQL Veritabanı Entegrasyon Raporu**

![Figma](https://img.shields.io/badge/Figma-Design_System-F24E1E?style=for-the-badge&logo=figma&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Relational_DB-CC292B?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![UI/UX](https://img.shields.io/badge/UI%2FUX-iOS_Guidelines-000000?style=for-the-badge&logo=apple&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

<br/>

┌────────────────────────────────────────────────────────────────────────┐
│                                                                        │
│                      🚨 SCREENSHOT / DEMO PREVIEW 🚨                   │
│                                                                        │
│   [ NutriGuide Dashboard & Responsive Mobile / Web Interfaces Preview ] │
└────────────────────────────────────────────────────────────────────────┘

</div>

---



##  Proje Amacı & Genel Bakış

**NutriGuide**, kişiselleştirilmiş kalori/makro besin takibi ile sağlıklı yemek kâseleri (bowl) sipariş süreçlerini tek bir çatı altında toplayan premium bir mobil ve web uygulama simülasyonudur.

Bu proje; **UI/UX Figma Design System** aşamasından başlayıp, **Tasarım Mimarisi**, **İlişkisel SQL Veritabanı Bütünlüğü** katmanlarını kapsayan kurumsal standartlarda geliştirilmiş bir tasarım ve mimari çalışmasıdır.

---



##  İçindekiler
- [ Proje Arayüz & Ekran Simülasyonları](#-proje-arayüz--ekran-simülasyonları)
- [ Öne Çıkan Özellikler & Yetenekler](#-öne-çıkan-özellikler--yetenekler)
- [ UI/UX Tasarım Sistemi (Figma)](#-uiux-tasarım-sistemi-figma)
- [ Sistem Mimarisi & Veri Akış Şeması](#️-sistem-mimarisi--veri-akış-şeması)
- [ Klasör Yapısı (Directory Tree)](#-klasör-yapısı-directory-tree)
- [ Teknoloji Yığını (Tech Stack)](#️-teknoloji-yığını-tech-stack)
- [ Veritabanı Mimarisi & SQL Kısıtlamaları](#️-veritabanı-mimarisi--sql-kısıtlamaları)
- [ Hata Yönetimi & Troubleshooting](#-hata-yönetimi--troubleshooting)
- [ İletişim](#-iletişim)

---



##  Proje Arayüz & Ekran Simülasyonları

<blockquote>
  <b> Arayüz Notu:</b> Tüm ekranlar iOS Human Interface Guidelines standartlarında 4 column simetrik grid ve Notch/Safe Area uyumu ile tasarlanmıştır.
</blockquote>

| 1. Discover Dashboard | 2. Detail & Calorie Card | 3. Cart & Receptive UI | 4. Figma Design Tokens |
| :---: | :---: | :---: | :---: |
| <img src="https://via.placeholder.com/280x560/10B981/FFFFFF?text=Discover+Screen" width="220"/> | <img src="https://via.placeholder.com/280x560/FF6B35/FFFFFF?text=Product+Detail" width="220"/> | <img src="https://via.placeholder.com/280x560/2C2C2C/FFFFFF?text=Cart+Dashboard" width="220"/> | <img src="https://via.placeholder.com/280x560/F24E1E/FFFFFF?text=Figma+Tokens" width="220"/> |

---



##  Öne Çıkan Özellikler & Yetenekler

| Modül / Özellik | Teknik Yaklaşım / Mimari | Durum |
| :--- | :--- | :---: |
| **Dinamik Tasarım Sistemi** | Figma üzerinde Auto Layout ve 8-pt Grid standartları | ✅ |
| **İki Aşamalı Splash Akışı** | `After Delay` ve organik ölçeklendirme animasyonları | ✅ |
| **Akıcı Motion Design** | Sayfa geçişlerinde *Smart Animate (Gentle, Linear, Ease Out)* | ✅ |
| **Hiyerarşik Tipografi** | Roboto yazı tipi ailesiyle H1-H3 ve Body hiyerarşisi | ✅ |
| **Reaktif Arayüz Bileşenleri** | Varyantlı butonlar ve esnek katman yönetimi | ✅ |
| **Veri Bütünlüğü (Data Integrity)**| SQL veritabanı seviyesinde `UNIQUE KEY` kısıtlaması | ✅ |

---



##  UI/UX Tasarım Sistemi (Figma)

<blockquote>
  <b> Atomic Design Rules:</b> Tüm bileşenler Figma üzerinde Auto Layout (Shift + A) ve 8-pt Grid standartlarına tam bağlı kalınarak üretilmiştir.
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



##  Sistem Mimarisi & Veri Akış Şeması

<pre>
┌───────────────────────────────────────────────────────────────────┐
│                    Figma UI/UX Design System                      │
│            (Auto Layout, 8-pt Grid, Component Variants)           │
└─────────────────────────────────┬─────────────────────────────────┘
                                  │
                                  ▼
┌───────────────────────────────────────────────────────────────────┐
│                    UI & Presentation Layer                        │
│            (Dashboard, Custom Search, Screen Routes)              │
└─────────────────────────────────┬─────────────────────────────────┘
                                  │
                                  ▼
┌───────────────────────────────────────────────────────────────────┐
│               Interactive Prototyping & Motion                    │
│            (Smart Animate, Gentle Curves, Fixed UI)               │
└─────────────────────────────────┬─────────────────────────────────┘
                                  │
                                  ▼
┌───────────────────────────────────────────────────────────────────┐
│             Relational Database (SQL Core Engine)                 │
│        (UNIQUE Key Constraints, Transactional Data Integrity)     │
└───────────────────────────────────────────────────────────────────┘
</pre>

---



##  Klasör Yapısı (Directory Tree)

```bash
nutriguide-design-architecture/
├── .github/                       # GitHub Konfigürasyonları ve Şablonlar
│   ├── ISSUE_TEMPLATE/
│   │   ├── bug_report.md          # Hata Bildirimi Şablonu
│   │   └── feature_request.md     # Yeni Özellik İstek Şablonu
│   └── PULL_REQUEST_TEMPLATE.md   # PR Gönderim Şablonu
├── database/                      # SQL Veritabanı Şemaları ve Tablolar
│   └── schema.sql                 # Customers ve Orders veritabanı kodları
├── docs/                          # UI/UX Tasarım Raporu ve Dokümantasyonlar
│   └── nutriguide_report.docx     # 2-3 sayfalık resmi proje raporu
├── screenshots/                   # Figma Ekran Görüntüleri ve Tasarım Çıktıları
│   ├── discover_screen.png        # Keşfet ekranı çıktısı
│   ├── detail_screen.png          # Ürün detay sayfası çıktısı
│   ├── cart_screen.png            # Sepet ekranı çıktısı
│   └── tokens_figma.png           # Figma Design Tokens görseli
├── .gitignore                     # Git Tarafından İzlenmeyecek Dosyalar
├── CODE_OF_CONDUCT.md             # Topluluk Davranış Kuralları
├── CONTRIBUTING.md                # Katkıda Bulunma Rehberi
└── README.md                      # Kurumsal Ana Dokümantasyon



Teknoloji Yığını (Tech Stack)KatmanTeknolojiSürümUI/UX DesignFigma (Auto Layout & Design Tokens)NativeDesign GuidelinesApple iOS Human Interface GuidelinesLatestDatabase EngineRelational SQL (MS SQL / PostgreSQL)Engine v15+Build & ToolingFigma Prototype & Vector EngineLatest



 Veritabanı Mimarisi & SQL KısıtlamalarıSQL-- Müşteri Tablosu (Unique Key Kısıtlamalı)
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    Username VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL CONSTRAINT UQ_Customer_Email UNIQUE,
    CreatedAt DATETIME DEFAULT GETDATE()
);
);


-- Sipariş Detay Tablosu (Foreign Key Bağlantılı)
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    TotalPrice DECIMAL(10,2) NOT NULL,
    OrderDate DATETIME DEFAULT GETDATE()
);
 Hata Yönetimi & Troubleshooting1. UNIQUE KEY Constraint Violation (SQL Hataları)Problem: Test ortamında mükerrer e-posta veya kullanıcı adı kaydı girildiğinde veritabanı hata verir.Çözüm: Test verileri sıfırlanırken aşağıdaki komut çalıştırılmalıdır:SQLTRUNCATE TABLE Customers;



 Geliştirici
Selinay Kardelen Bölge
Bilgisayar Mühendisliği 

 LinkedIn: Selinay Kardelen Bölge
 E-mail: kardelenbolge@gmail.com

