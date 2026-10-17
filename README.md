<div align="center">

#  NutriGuide 
### Premium Healthy Life UI/UX & Database Architecture
**Figma Design System · UI/UX Design · Relational Database Architecture**
</div>


##  Proje Amacı & Genel Bakış

**NutriGuide**, kişiselleştirilmiş kalori/makro besin takibi ile sağlıklı yemek kâseleri (bowl) sipariş süreçlerini tek bir çatı altında toplayan premium bir mobil ve web uygulama simülasyonudur.

Bu proje; **UI/UX Figma Design System** aşamasından başlayıp, **Tasarım Mimarisi**, **İlişkisel SQL Veritabanı Bütünlüğü** katmanlarını kapsayan kurumsal standartlarda geliştirilmiş bir tasarım ve mimari çalışmasıdır.

Temel amaçlar:

- Kullanıcı dostu ve tutarlı bir arayüz tasarlamak.
- Figma üzerinde yeniden kullanılabilir tasarım bileşenleri oluşturmak.
- Mobil uygulama ekranları arasında tutarlı bir kullanıcı akışı tasarlamak.
- Web yönetim paneli arayüzünü görsel olarak modellemek.
- Customers ve Orders tabloları üzerinden ilişkisel veritabanı yapısını incelemek.
- Veritabanında benzersiz e-posta kısıtlaması ve müşteri-sipariş ilişkisini tanımlamak.

---

##  İçindekiler

| Özellik | Açıklama |
| :--- | :--- |
|  Tasarım Sistemi | Figma üzerinde renk paleti, tipografi ve bileşen tasarımı |
|  Mobil Arayüz | Keşfet, giriş, açılış ve detay ekranlarının tasarımı |
|  Web Arayüzü | Yönetim paneli arayüz simülasyonu |
|  Auto Layout | Esnek ve düzenli arayüz bileşenleri |
|  8-pt Grid | Arayüz elemanları arasında tutarlı boşluk kullanımı |
|  Motion Design | Smart Animate ile prototip geçişleri |
|  Veritabanı Tasarımı | Customers ve Orders tabloları |
|  Veri Bütünlüğü | E-posta alanı için UNIQUE kısıtlaması |
|  İlişkisel Yapı | Orders.CustomerID ile Customers.CustomerID arasındaki ilişki |

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
```


---

##  6. Kullanılan Teknolojiler

| Teknoloji / Araç | Kullanım Alanı |
| :--- | :--- |
| **Figma** | UI/UX tasarımı ve prototipleme |
| **Auto Layout** | Esnek bileşen yerleşimi |
| **8-pt Grid** | Tasarım boşluklarının standardizasyonu |
| **Smart Animate** | Prototip geçişleri |
| **SQL** | İlişkisel veritabanı şeması |
| **Microsoft SQL Server uyumlu SQL** | Tablo tanımları ve veri kısıtlamaları |
| **Visual Studio Code** | Ekran görüntüsünde gösterilen geliştirme ortamı |


---

## 7. Veritabanı Mimarisi & Veri Sözlüğü

Projenin arka planında çalışan ilişkisel veritabanı tabloları, veri türleri ve kısıtlama detayları aşağıda sunulmuştur.

###  Customers Tablosu

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
**Önemli noktalar:**

- `PRIMARY KEY`, her müşteri kaydını benzersiz şekilde tanımlar.
- `IDENTITY(1,1)`, kimlik değerinin otomatik artmasını sağlar.
- `NOT NULL`, alanın boş bırakılmasını engeller.
- `UNIQUE`, aynı e-posta değerinin birden fazla kayıtta kullanılmasını engeller.

---

###  Orders Tablosu

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
**Önemli noktalar:**

- `OrderID`, her siparişi benzersiz şekilde tanımlar.
- `CustomerID`, siparişi müşteri kaydıyla ilişkilendirir.
- `DECIMAL(10,2)`, parasal tutarların ondalıklı saklanmasına uygundur.
- `FOREIGN KEY`, siparişin ilişkilendirildiği müşteri kaydının varlığını kontrol eder.

---
### 8. Tablolar Arasındaki İlişki

```text
┌─────────────────────┐
│      Customers      │
├─────────────────────┤
│ PK CustomerID       │
│    Username         │
│    Email            │
│    CreatedAt        │
└──────────┬──────────┘
           │
           │ CustomerID
           │
           ▼
┌─────────────────────┐
│       Orders        │
├─────────────────────┤
│ PK OrderID          │
│ FK CustomerID       │
│    TotalPrice       │
│    OrderDate        │
└─────────────────────┘
```

Bu modelde bir müşteri birden fazla siparişle ilişkilendirilebilir. Her siparişin `CustomerID` değeri, ilgili müşteri kaydını gösterir.

---
##  9. Veritabanı Tasarımı ve Veri Bütünlüğü

Bu projede dokümante edilen veritabanı çalışması Customers ve Orders tabloları ile sınırlıdır.

### 9.1. Benzersiz E-posta Kısıtlaması

`UQ_Customer_Email` kısıtlaması, aynı e-posta adresinin birden fazla müşteri kaydında kullanılmasını önler.

```sql
Email VARCHAR(100) NOT NULL
    CONSTRAINT UQ_Customer_Email UNIQUE
```

### 9.2. Müşteri-Sipariş İlişkisi

```sql
CustomerID INT FOREIGN KEY
    REFERENCES Customers(CustomerID)
```

Bu tanım, Orders tablosundaki müşteri referansının Customers tablosundaki bir kayda dayanmasını sağlar.

### 9.3. Gerçek Veritabanı Çıktıları

Gerçek SQL Server sorgu sonuçlarının ekran görüntüleri, depoya eklendiklerinde bu bölümde gösterilebilir.

Örnek görsel yolu:

```markdown
![Customers Table](screenshots/customers-table.png)
```

---

##  10. Hata Yönetimi ve Sık Karşılaşılan Problemler

### 10.1. UNIQUE Constraint Violation

**Problem:** Aynı e-posta adresiyle tekrar müşteri kaydı eklenmeye çalışıldığında benzersizlik kısıtlaması ihlal edilir.

Örnek hata:

```text
Violation of UNIQUE KEY constraint
```

**Çözüm:**

- Yeni kayıt eklemeden önce e-posta adresinin mevcut olup olmadığını kontrol et.
- Test verilerinde farklı e-posta adresleri kullan.
- Kısıtlamayı kaldırmak yerine veri bütünlüğünü koru.

### 10.2. Foreign Key Constraint Hatası

**Problem:** Orders tablosuna, Customers tablosunda bulunmayan bir `CustomerID` ile sipariş eklenmeye çalışılması.

Örnek hata:

```text
The INSERT statement conflicted with the
FOREIGN KEY constraint.
```

**Çözüm:**

- Önce müşterinin Customers tablosunda bulunduğunu doğrula.
- Sipariş kaydında geçerli bir `CustomerID` kullan.
- İlişkili tablolardaki silme ve güncelleme işlemlerini dikkatli yürüt.

### 10.3. Tablo Bulunamadı Hatası

**Problem:** SQL sorgusunda belirtilen tablo, seçili veritabanında bulunmuyor olabilir.

Örnek hata:

```text
Invalid object name 'Customers'.
```

**Çözüm:**

- Doğru veritabanının seçildiğini kontrol et.
- Tablo adının doğru yazıldığından emin ol.
- Tablo oluşturma komutlarının çalıştırılıp çalıştırılmadığını doğrula.

### 10.4. TRUNCATE TABLE Kullanımı

`TRUNCATE TABLE`, tablo içindeki kayıtları topluca siler. Ancak Customers tablosu Orders tarafından bir foreign key ile referans edildiği için SQL Server'da doğrudan çalıştırılması engellenebilir.

```sql
TRUNCATE TABLE Customers;
```

---

##  11. Proje Çıktıları

Proje kapsamında dokümante edilen çıktılar:

| Çıktı | Açıklama |
| :--- | :--- |
| Figma Tasarım Sistemi | Renk, tipografi ve bileşen tasarımı |
| Mobil Ekran Tasarımları | Splash, Login, Home ve Detail akışı |
| Web Yönetim Paneli Tasarımı | Yönetim panelinin görsel simülasyonu |
| SQL Tablo Tanımları | Customers ve Orders tabloları |
| İlişkisel Model | Primary Key ve Foreign Key ilişkileri |
| Veri Bütünlüğü | E-posta için UNIQUE kısıtlaması |
| Ekran Görüntüleri | Tasarım ve geliştirme ortamı görselleri |

---

##  12. Sonuç

NutriGuide projesi, kullanıcı deneyimi tasarımı ile ilişkisel veritabanı modellemesini bir araya getiren bir çalışmadır.

Figma tarafında tutarlı bir tasarım sistemi, mobil ekran akışları ve web arayüzü simülasyonu ele alınmıştır. Veritabanı tarafında ise Customers ve Orders tabloları üzerinden birincil anahtar, yabancı anahtar ve benzersiz e-posta kısıtlaması gibi temel kavramlar modellenmiştir.

Bu çalışma; **UI/UX tasarımı, tasarım sistemi oluşturma, prototipleme ve ilişkisel veritabanı tasarımı** alanlarındaki çalışmaları belgelemektedir.

---

##  Geliştirici

**Selinay Kardelen Bölge**

Bilgisayar Mühendisliği

- **LinkedIn:** Selinay Kardelen Bölge
- **E-posta:** kardelenbolge@gmail.com






