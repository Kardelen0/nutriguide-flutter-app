<div align="center">

#  NutriGuide - Premium Healthy Life UI/UX & Database Architecture

---

##  Proje Amacı & Genel Bakış

**NutriGuide**, kişiselleştirilmiş kalori/makro besin takibi ile sağlıklı yemek kâseleri (bowl) sipariş süreçlerini tek bir çatı altında toplayan premium bir mobil ve web uygulama simülasyonudur.

Bu proje; **UI/UX Figma Design System** aşamasından başlayıp, **Tasarım Mimarisi**, **İlişkisel SQL Veritabanı Bütünlüğü** katmanlarını kapsayan kurumsal standartlarda geliştirilmiş bir tasarım ve mimari çalışmasıdır.

---

##  İçindekiler

- [ Uygulama Ekranları ve Görsel Analizler](#️-uygulama-ekranları-ve-görsel-analizler)
- [ Öne Çıkan Özellikler & Yetenekler](#-öne-çıkan-özellikler--yetenekler)
- [ UI/UX Tasarım Sistemi (Figma)](#-uiux-tasarım-sistemi-figma)
- [ Sistem Mimarisi & Veri Akış Şeması](#️-sistem-mimarisi--veri-akış-şeması)
- [ Klasör Yapısı (Directory Tree)](#-klasör-yapısı-directory-tree)
- [ Teknoloji Yığını (Tech Stack)](#️-teknoloji-yığını-tech-stack)
- [ Veritabanı Mimarisi & Veri Sözlüğü](#️-veritabanı-mimarisi--veri-sözlüğü)
- [ Hata Yönetimi & Troubleshooting](#-hata-yönetimi--troubleshooting)
- [ İletişim](#-iletişim)

---

##  Uygulama Ekranları ve Görsel Analizler

<blockquote>
  <b> Arayüz Notu:</b> Tüm ekranlar iOS Human Interface Guidelines standartlarında 4 column simetrik grid ve Notch/Safe Area uyumu ile tasarlanmıştır.
</blockquote>

### 1. Keşfet (Discover) ve Ana Sayfa Akışı

Uygulama açılışında kullanıcıyı karşılayan ana sayfa, kategori filtreleri ve ürün ızgara (grid) yapısı.

<img src="screenshots/Ekran görüntüsü 2026-06-13 171659.png" alt="Discover Ekranı" width="100%"/>

---

### 2. Çoklu Ekran Akışı (Splash, Login, Home, Detail)

Projenin uçtan uca tüm ekran akışlarının (Açılış, Giriş, Keşif ve Detay) bütüncül görünümü.

<img src="screenshots/Ekran görüntüsü 2026-06-13 220533.png" alt="Multi Screen Flow" width="100%"/>

---

### 3. Figma Design System & Tokens

Tasarım sisteminde kullanılan renk paletleri, tipografi hiyerarşisi, ikonlar ve component varyantlarının toplu halde gösterildiği tahta.

<img src="screenshots/Ekran görüntüsü 2026-06-13 220601.png" alt="Design System" width="100%"/>

---

### 4. Web Yönetim Paneli Simülasyonu (Arayüz)

Yönetim paneli üzerinden yeni sağlıklı tariflerin eklendiği ve listelendiği web arayüzü görünümü.

<img src="screenshots/Ekran%20görüntüsü%202026-06-21%20032814.png" alt="Web Dashboard" width="100%"/>

---

### 5. VS Code & Canlı Geliştirme Ortamı

Projenin kaynak kodlarının, bileşen yapısının ve canlı geliştirme ortamının (Vite/React/Web) incelendiği IDE ekranı.

<img src="screenshots/Ekran%20görüntüsü%202026-06-21%20033417.png" alt="IDE Environment" width="100%"/>

---

##  Öne Çıkan Özellikler & Yetenekler

| Modül / Özellik | Teknik Yaklaşım / Mimari | Durum |
| :--- | :--- | :---: |
| **Dinamik Tasarım Sistemi** | Figma üzerinde Auto Layout ve 8-pt Grid standartları | ✅ |
| **İki Aşamalı Splash Akışı** | `After Delay` ve organik ölçeklendirme animasyonları | ✅ |
| **Akıcı Motion Design** | Sayfa geçişlerinde *Smart Animate (Gentle, Linear, Ease Out)* | ✅ |
| **Hiyerarşik Tipografi** | Roboto yazı tipi ailesiyle H1-H3 ve Body hiyerarşisi | ✅ |
| **Reaktif Arayüz Bileşenleri** | Varyantlı butonlar ve esnek katman yönetimi | ✅ |
| **Veri Bütünlüğü (Data Integrity)** | SQL veritabanı seviyesinde `UNIQUE KEY` kısıtlaması | ✅ |

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
│            (Auto Layout, 8-pt Grid, Component Variants)            │
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


## 📂 Klasör Yapısı (Directory Tree)

```text
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
├── screenshots/                   # Gerçek Ekran Görüntüleri ve Tasarım Çıktıları
│   ├── Ekran görüntüsü 2026-06-13 171659.jpg
│   ├── Ekran görüntüsü 2026-06-13 220533.jpg
│   ├── Ekran görüntüsü 2026-06-13 220601.jpg
│   ├── Ekran görüntüsü 2026-06-21 032814.png
│   └── Ekran görüntüsü 2026-06-21 033417.png
├── .gitignore                     # Git Tarafından İzlenmeyecek Dosyalar
├── CODE_OF_CONDUCT.md             # Topluluk Davranış Kuralları
├── CONTRIBUTING.md                # Katkıda Bulunma Rehberi
└── README.md                      # Kurumsal Ana Dokümantasyon


---

##  Teknoloji Yığını (Tech Stack)

| Katman | Teknoloji | Sürüm |
| :--- | :--- | :--- |
| **UI/UX Design** | Figma (Auto Layout & Design Tokens) | Native |
| **Design Guidelines** | Apple iOS Human Interface Guidelines | Latest |
| **Database Engine** | Relational SQL (MS SQL / PostgreSQL) | Engine v15+ |
| **Build & Tooling** | Figma Prototype & Vector Engine | Latest |

---

##  Veritabanı Mimarisi & Veri Sözlüğü

Projenin arka planında çalışan ilişkisel veritabanı tabloları, veri türleri ve kısıtlama detayları aşağıda sunulmuştur.

### 1. Customers Tablosu

Uygulamaya kayıt olan kullanıcıların temel bilgilerinin ve benzersiz erişim verilerinin saklandığı tablodur.

| Kolon | Veri Tipi | Açıklama |
| :--- | :--- | :--- |
| **CustomerID** | `INT (PK)` | Benzersiz Müşteri ID (Auto Increment) |
| **Username** | `VARCHAR(50)` | Kullanıcı adı bilgisi |
| **Email** | `VARCHAR(100)` | Benzersiz e-posta adresi (UNIQUE KEY) |
| **CreatedAt** | `DATETIME` | Kayıt oluşturulma tarihi |

#### SQL Kodu

```sql
-- Müşteri Tablosu (Unique Key Kısıtlamalı)
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    Username VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL CONSTRAINT UQ_Customer_Email UNIQUE,
    CreatedAt DATETIME DEFAULT GETDATE()
);
```

---

### 2. Orders Tablosu

Kullanıcıların vermiş olduğu siparişlerin ve toplam tutarlarının saklandığı tablodur.

| Kolon | Veri Tipi | Açıklama |
| :--- | :--- | :--- |
| **OrderID** | `INT (PK)` | Benzersiz Sipariş ID (Auto Increment) |
| **CustomerID** | `INT (FK)` | Siparişi veren müşterinin ID'si (Customers ile ilişkili) |
| **TotalPrice** | `DECIMAL(10,2)` | Sipariş toplam tutarı |
| **OrderDate** | `DATETIME` | Siparişin verildiği tarih/saat |

#### SQL Kodu

```sql
-- Sipariş Detay Tablosu (Foreign Key Bağlantılı)
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    TotalPrice DECIMAL(10,2) NOT NULL,
    OrderDate DATETIME DEFAULT GETDATE()
);
```

---

##  Hata Yönetimi & Troubleshooting

### 1. UNIQUE KEY Constraint Violation (SQL Hataları)

**Problem:** Test ortamında mükerrer e-posta veya kullanıcı adı kaydı girildiğinde veritabanı `UQ_Customer_Email` hatası verir.

**Çözüm:** Test verileri sıfırlanmadan önce aşağıdaki SQL komutunun etkisi kontrol edilmelidir.

```sql
TRUNCATE TABLE Customers;

```

> **Uyarı:** `TRUNCATE TABLE Customers;` komutu tablodaki tüm müşteri kayıtlarını siler. Gerçek veriler üzerinde çalıştırmadan önce yedek aldığından emin ol. Ayrıca `Orders` tablosu `Customers` tablosuna foreign key ile bağlı olduğundan SQL Server'da bu komut mevcut ilişki nedeniyle hata verebilir.

---

## İletişim & Geliştirici
Selinay Kardelen Bölge

Bilgisayar Mühendisliği

LinkedIn: https:  //www.linkedin.com/in/selinay-kardelen-bölge-1204b6295 

E-mail: kardelenbolge@gmail.com
