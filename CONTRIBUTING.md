# NutriGuide Projesine Katkıda Bulunma Rehberi

NutriGuide projesine katkı sağlamak istediğiniz için teşekkür ederiz! Açık kaynak topluluğunun desteğiyle projeyi daha ileriye taşımaktan heyecan duyuyoruz.

Lütfen katkıda bulunmadan önce aşağıdaki adımları ve kuralları dikkatlice okuyun.

---



##  Başlangıç Adımları

1. **Depoyu Fork Edin:** Sağ üst köşedeki **Fork** butonuna tıklayarak projeyi kendi GitHub hesabınıza kopyalayın.
2. **Depoyu Klonlayın:**
   ```bash
   git clone [https://github.com/KULLANICI_ADINIZ/nutriguide-flutter-app.git](https://github.com/KULLANICI_ADINIZ/nutriguide-flutter-app.git)
   cd nutriguide-flutter-app
Yeni Bir Branch Açın:

Bash
git checkout -b feat/harika-yeni-ozellik



Commit Mesajı Standartları (Conventional Commits)
Commit mesajlarınızı yazarken lütfen aşağıdaki önek standartlarına uyun:

feat: Yeni bir özellik eklendiğinde (feat: add calorie calculator widget)

fix: Bir hata düzeltildiğinde (fix: resolve search bar case sensitivity)

docs: Dokümantasyon güncellemelerinde (docs: update README installation steps)

style: Kodun çalışmasını etkilemeyen stil/format değişikliklerinde (style: format code with dart format)

refactor: Performans veya kod kalitesi düzenlemelerinde (refactor: optimize GridView.builder)



Pull Request (PR) Gönderme Kuralları
Kod değişikliklerinizin mevcut yapıyı bozmadığından emin olun.

flutter analyze komutunu çalıştırarak herhangi bir analiz hatası olmadığından emin olun.

PR göndermeden önce ana depodaki değişiklikleri kendi dalınıza çekin (rebase / merge).

Açtığınız PR için detaylı bir açıklama yazın ve ilgili Issue numarasını ekleyin (Closes #12).
