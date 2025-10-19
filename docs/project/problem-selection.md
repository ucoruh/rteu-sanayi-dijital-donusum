# Problem Seçimi Rehberi

## Giriş

İyi bir proje, iyi bir problem seçimiyle başlar. Doğru problemı seçmek, projenizin başarısını büyük ölçüde belirler. Bu rehber, öğrenci projeleri için etkili problem bulma ve seçme stratejileri sunmaktadır.

---

## İyi Problem Seçimi Kriterleri

### 1. Gerçek ve Çözülmeye Değer

**İyi Problem**:
- Gerçek kullanıcılar var
- Mevcut çözümler yetersiz
- Belirgin bir acı noktası (pain point)
- Çözüm değer yaratıyor

**Kontrol Soruları**:
```
□ En az 10 kişi bu problemi yaşıyor mu?
□ İnsanlar şu anda nasıl çözüyor? (geçici çözümler)
□ Çözüm olsaydı kullanır mıydı?
□ Problem günlük/haftalık yaşanıyor mu?
□ Çözüm zaman/para tasarrufu sağlıyor mu?
```

**Örnek - İyi Problem**:
```
Problem: "Üniversite öğrencileri, farklı kaynaklardan aldıkları
ders notlarını düzenlemekte ve sınav öncesi erişmekte zorlanıyor."

Gerçeklik Kontrolü:
✅ 50 öğrenci ile görüşüldü, %80'i problemi onayladı
✅ Şu anda Word/PDF karışık dosyalar kullanıyorlar
✅ Sınav öncesi saatlerce not arıyorlar
✅ Organize bir sistem olsaydı kullanacaklarını söylediler
```

**Örnek - Zayıf Problem**:
```
Problem: "İnsanlar bazen hangi filmi izleyeceklerini bilemiyorlar."

Gerçeklik Kontrolü:
❌ Netflix, IMDb, vb. birçok çözüm var
❌ Kritik bir problem değil
❌ Zaman/para kaybı çok az
❌ Kullanıcılar mevcut çözümlerle mutlu
```

### 2. Uygun Kapsam ve Karmaşıklık

**Goldilocks İlkesi**: Ne çok kolay, ne çok zor - tam olacak!

**Çok Kolay (Yetersiz)**:
- 1 haftada bitiyor
- Mevcut araçlarla çok basit
- Öğrenme potansiyeli düşük
- Örnek: "Basit to-do list uygulaması"

**Çok Zor (Aşırı Hırslı)**:
- 1 yılda bile bitmez
- Ekip ve kaynak eksikliği
- Çok fazla belirsizlik
- Örnek: "Yapay zeka ile kanser tanısı sistemi"

**Tam Kıvamında**:
- 10-14 hafta geliştirme
- Zorlayıcı ama yapılabilir
- Yeni teknolojiler öğrenme fırsatı
- MVP (Minimum Viable Product) tanımlanabilir
- Örnek: "Kampüs içi kayıp eşya bulma platformu"

**Kapsam Değerlendirmesi**:

```markdown
## Kapsam Tahmini Tablosu

| Özellik | Zorluk | Süre (hafta) | Gerekli mi? |
|---------|--------|--------------|-------------|
| Kullanıcı kayıt | Kolay | 1 | Evet |
| Eşya ekleme | Kolay | 1 | Evet |
| Fotoğraf upload | Orta | 1 | Evet |
| Arama/Filtreleme | Orta | 2 | Evet |
| Bildirimler | Orta | 1-2 | İyi olur |
| Chat sistemi | Zor | 3-4 | Hayır (v2) |
| AI eşleştirme | Çok Zor | 4+ | Hayır (v2) |

Temel Özellikler Toplamı: 5-6 hafta
Buffer + Testing + Dokümantasyon: 4-5 hafta
Toplam: 9-11 hafta ✅ Uygun!
```

### 3. Ölçülebilir Başarı Kriterleri

**SMART Hedefler**:
- **S**pecific (Belirli)
- **M**easurable (Ölçülebilir)
- **A**chievable (Ulaşılabilir)
- **R**elevant (İlgili)
- **T**ime-bound (Zamana bağlı)

**Örnek - Belirsiz Hedef**:
```
❌ "Öğrencilerin ders çalışmasını kolaylaştırmak"
```

**Örnek - SMART Hedef**:
```
✅ "14 hafta içinde, en az 50 öğrencinin kullandığı,
   ders notlarını markdown formatında düzenleyip
   sınav öncesi 10 saniyede erişim sağlayan bir web uygulaması"

Ölçülebilir metrikler:
- Kullanıcı sayısı: 50+
- Ortalama erişim süresi: <10 saniye
- Aktif kullanım: Haftada en az 1 kez
- Memnuniyet: 4/5 yıldız üzeri
```

### 4. Teknik Fizibilite

**Değerlendirme Kriterleri**:

```markdown
## Teknik Fizibilite Kontrol Listesi

Teknoloji:
□ Seçilen teknolojileri öğrenme süresi 2 haftadan az mı?
□ Ücretsiz/açık kaynak araçlar yeterli mi?
□ Online kaynak ve topluluk desteği var mı?
□ Örnek projeler/tutoriallar mevcut mu?

Altyapı:
□ Sunucu/hosting maliyeti uygun mu? (<500 TL/yıl)
□ Ücretsiz tier yeterli mi? (Heroku, Vercel, Firebase)
□ Veritabanı ihtiyacı karşılanabilir mi?

Dış Bağımlılıklar:
□ Üçüncü parti API'ler ücretsiz mi?
□ Rate limit'ler yeterli mi?
□ Alternatif servisler var mı?

Ekip Becerileri:
□ Mevcut becerilerle %50'si yapılabilir mi?
□ Eksik becerileri öğrenmek mümkün mü?
□ Zor kısımlar için yardım alınabilir mi?
```

**Teknoloji Araştırması Şablonu**:

```markdown
# Teknoloji Araştırması: [Proje Adı]

## Backend
**Seçenekler**: Node.js, Python (Flask/Django), Java (Spring Boot)

**Öneri**: Node.js + Express
**Neden**:
- Ekip JavaScript biliyor
- Hızlı prototipleme
- Bol kaynak ve tutorial

**Öğrenme Eğrisi**: 1 hafta
**Maliyet**: Ücretsiz

## Frontend
**Seçenekler**: React, Vue, Angular, Vanilla JS

**Öneri**: React
**Neden**:
- Popüler, bol kaynak
- Component-based
- İş dünyasında yaygın

**Öğrenme Eğrisi**: 2 hafta
**Maliyet**: Ücretsiz

## Veritabanı
**Seçenekler**: PostgreSQL, MySQL, MongoDB

**Öneri**: PostgreSQL
**Neden**:
- İlişkisel veri yapısına uygun
- Ücretsiz hosting (Heroku, Supabase)
- SQL bilgisi var

**Öğrenme Eğrisi**: 1 hafta
**Maliyet**: Ücretsiz tier yeterli

## Hosting
**Seçenekler**: Heroku, Vercel, AWS, DigitalOcean

**Öneri**:
- Frontend: Vercel (ücretsiz)
- Backend: Heroku/Railway (ücretsiz tier)
- DB: Supabase (ücretsiz tier)

**Toplam Maliyet**: 0 TL/ay
```

### 5. Yenilik ve Ayırt Edicilik

**Yenilik Spektrumu**:

```
Düşük Yenilik              Orta Yenilik              Yüksek Yenilik
    |                          |                          |
Mevcut çözümün             Farklı teknoloji          Tamamen yeni
kopyası                    veya yaklaşım             çözüm/fikir
    |                          |                          |
    ❌                         ✅ (Önerilen)             ⚠️ (Riskli)
```

**Orta Yenilik Örnekleri** (İdeal):
- Mevcut probleme farklı yaklaşım
- Yeni teknoloji kullanımı
- Spesifik kullanıcı grubuna özelleştirilmiş çözüm
- Mevcut çözümlerin kombinasyonu

**Örnek**:
```
Problem: Kampüste kayıp eşya bulma

Mevcut Çözüm:
- WhatsApp grupları
- Kampüs ilan panoları
- Kayıp eşya ofisi

Sizin Çözümünüz (Orta Yenilik):
✅ Web/mobil platform
✅ Fotoğraf tabanlı arama
✅ Konum bazlı bildirimler
✅ QR kod ile hızlı eşleştirme
✅ Kampüse özel kategoriler

Neden Farklı:
- Merkezi platform (dağınıklık yok)
- Görsel arama (yazıdan daha etkili)
- Anlık bildirimler (WhatsApp kaos olmadan)
- Kampüse özel (genel kayıp eşya sitelerinden farklı)
```

### 6. Öğrenme Potansiyeli

**İyi Bir Proje Size Ne Öğretmeli?**

```markdown
Teknik Beceriler:
□ En az 1 yeni programlama dili/framework
□ Veritabanı tasarımı ve yönetimi
□ API geliştirme/entegrasyonu
□ Frontend/Backend entegrasyonu
□ Test yazma
□ Deployment ve DevOps temelleri

Yazılım Mühendisliği:
□ Proje yönetimi (Agile/Scrum)
□ Versiyon kontrolü (Git/GitHub)
□ Kod review
□ Dokümantasyon
□ Debugging ve problem çözme

Soft Skills:
□ Takım çalışması
□ Zaman yönetimi
□ Kullanıcı araştırması
□ Sunum becerileri
□ Teknik yazma
```

**Denge**: Ne çok kolay (hiç öğrenme yok), ne çok zor (bunalım yaratacak)

### 7. Portföy Değeri

**İyi Bir Portföy Projesi**:

```markdown
Gösterilebilirlik:
□ Canlı demo var mı? (URL paylaşılabilir)
□ Görsel olarak çekici mi?
□ Anlatılması kolay mı? (30 saniye pitch)

İş Dünyası İlgisi:
□ Gerçek problemi çözüyor mu?
□ Kullanıcı metrikleri var mı?
□ Modern teknolojiler kullanılmış mı?
□ Best practice'ler uygulanmış mı?

GitHub Kalitesi:
□ Düzenli commit history
□ Detaylı README
□ Kod dokümantasyonu
□ İyi klasör yapısı
```

**Portföy Hikayesi Örneği**:
```
"Kampüsümüzde öğrenciler her gün eşya kaybediyor ve
WhatsApp grupları etkisiz kalıyordu.

Arkadaşımla birlikte 'LostAndFound' platformunu
React ve Node.js ile geliştirdik.

İlk ayda 200 öğrenci kaydoldu ve 45 eşya
sahipleriyle buluştu.

Bu proje sayesinde full-stack geliştirme,
kullanıcı araştırması ve product management
deneyimi kazandım."
```

---

## Problem Bulma Teknikleri

### Teknik 1: Kişisel Deneyim (Pain Point Mining)

**Yöntem**: Kendi günlük sorunlarınıza bakın

**Adımlar**:
1. Bir hafta boyunca can sıkıcı şeyleri not edin
2. Tekrar eden sorunları belirleyin
3. Bunları kategorize edin
4. En sık yaşananı seçin

**Örnek Not Defteri**:
```
Pazartesi:
- Kampüste yemek kuyruğu 20 dakika sürdü 😤
- Hangi derslikteyim unuttum, geç kaldım 😓

Salı:
- Ders notlarımı bulamadım, her yer dağınık 📚
- Yine yemek kuyruğu uzundu 😤

Çarşamba:
- Arkadaşın çalıştığı kafe bilgisi hatırlamadım
- Ders notlarını düzenlemek 2 saat sürdü 📚

Perşembe:
- Not düzenleme yine çok zaman aldı 📚
- Grup arkadaşlarının güncel halini bulmakta zorlandım

Cuma:
- Haftanın notlarını birleştirmek çok yorucu 📚
```

**Analiz**:
- Ders notu düzenleme: 4 kez (En sık) ✅
- Yemek kuyruğu: 2 kez
- Diğerleri: 1'er kez

**Seçilen Problem**: Ders notu düzenleme ve yönetimi

**Doğrulama**:
- 10 arkadaşa sor
- En az 5'i de aynı sorunu yaşıyorsa → İyi problem!

### Teknik 2: Kullanıcı Gözlemi (Observation)

**Yöntem**: İnsanları gözlemleyerek sorunları tespit edin

**Gözlem Yerleri**:
- Kampüs kafeterya
- Kütüphane
- Bilgisayar laboratuvarı
- Yurtlar
- Ortak çalışma alanları

**Gözlem Şablonu**:
```markdown
# Gözlem Notları

**Tarih**: 15 Ocak 2024
**Yer**: Kampüs Kütüphanesi
**Süre**: 2 saat

## Gözlemler

1. Öğrenci A (14:00):
   - Bilgisayarda 10+ sekme açık
   - PDF'ler arasında geçiş yapıyor
   - Notlarını Word'e kopyalıyor
   - Formatı düzeltiyor
   - **Zaman**: 15 dakika tek bir not için

2. Öğrenci B (14:30):
   - Telefonda fotoğraflar arasında geziniyor
   - Ders notlarının fotoğraflarını bulamıyor
   - Arkadaşına WhatsApp'tan soruyor
   - Bulunca fotoğrafı büyüterek okuyor

3. Öğrenci C (15:00):
   - Kağıt notlar her yere dağılmış
   - Başka bir notebooka yeniden yazıyor
   - Renkli kalemlerle vurguluyor

## Ortak Tema
Not düzenleme ve erişim zorluğu

## Potansiyel Çözüm
Merkezi, organize dijital not platformu
```

### Teknik 3: Derin Görüşmeler (User Interviews)

**Yöntem**: Hedef kullanıcılarla 1-1 görüşmeler

**Görüşme Yapısı** (30 dakika):

```markdown
# Görüşme Rehberi

## Giriş (5 dk)
- Kendini tanıt
- Araştırma amacını açıkla
- İzin al (not alma, kayıt)

## Bağlam (5 dk)
- Günlük rutinin nasıl?
- Ders çalışma süreç ne?
- Hangi araçları kullanıyorsun?

## Problem Keşfi (15 dk)
- [Konu] ile ilgili en büyük zorluğun nedir?
- Bunu ne sıklıkla yaşıyorsun?
- Şu anda nasıl çözüyorsun?
- Bu çözüm seni tatmin ediyor mu?
- İdeal çözüm senin için nasıl olurdu?
- Örnek bir durum anlatır mısın?

## Sonuç (5 dk)
- Eklemek istediğin bir şey var mı?
- Başka kimlerle konuşmalıyım?
- Geliştirdiğimiz çözümü test eder misin?
```

**Etkili Sorular**:
```
Açık Uçlu:
✅ "Ders notlarını nasıl düzenliyorsun?"
❌ "Not uygulaması kullanır mısın?" (Evet/Hayır)

Detay İsteyen:
✅ "Geçen hafta sınav öncesi ne yaptığını adım adım anlatır mısın?"
❌ "Sınav hazırlığı zor mu?" (Genel)

"Neden" Soruları:
✅ "Neden bu uygulamayı tercih ediyorsun?"
✅ "Bu sorunu çözmek senin için neden önemli?"

Hikaye İsteyen:
✅ "En son ne zaman bu problemle karşılaştın? Ne oldu?"
```

**Görüşme Analizi**:

10 görüşme yaptıktan sonra:
```markdown
# Görüşme Analizi

## Ana Temalar
1. Not düzenleme zorluğu (8/10 kişi)
2. Sınav öncesi hızlı erişim (7/10 kişi)
3. Farklı format karmaşası (6/10 kişi)
4. Paylaşım zorluğu (5/10 kişi)

## Kullanıcı Tipolojisi
- Dijital kullanıcı (6 kişi): Word, Notion, Evernote
- Kağıt kullanıcı (3 kişi): Not defteri, fotoğraf
- Hibrit (1 kişi): Her ikisi

## En Büyük Acı Noktası
"Sınav öncesi gece yarısı notlarımı bulamıyorum,
farklı dosyalara dağılmış, hangisinin güncel
olduğunu bilmiyorum."

## İdeal Çözüm (Kullanıcı Cümleleri)
- "Tek bir yerde olsa"
- "Hızlı arama yapabilsem"
- "Markdown ile düzenleyebilsem"
- "Arkadaşlarla paylaşabilsem"
```

### Teknik 4: Online Araştırma

**Kaynak 1: Reddit, Quora, Forum**

Arama örnekleri:
```
Reddit:
- r/college "problems"
- r/students "frustrating"
- r/productivity "challenge"

Quora:
- "What problems do university students face?"
- "Biggest challenges for students"
```

**Kaynak 2: Twitter Şikayetleri**

```
Arama sorguları:
- "öğrenci sorun"
- "kampüs problem"
- "üniversite canımı sıkan"
- "ders çalışma zorluk"
```

**Kaynak 3: App Store/Play Store Yorumları**

Mevcut uygulamaların 1-2 yıldızlı yorumlarını okuyun:
```
Öğrenci uygulamaları:
- Not alma uygulamaları
- Kampüs yardımcıları
- Ders programı uygulamaları

Neye dikkat edin:
- "... olmaması çok kötü"
- "... özelliğini isterdim"
- "... çalışmıyor"
```

### Teknik 5: Problem Brainstorming

**Yöntem**: Takım olarak organize beyin fırtınası

**Aktivite: Problem Storming** (60 dakika)

```markdown
## Problem Storming Oturumu

### Hazırlık (10 dk)
- Post-it notlar ve kalemler
- Geniş bir masa/duvar
- Timer

### 1. Bireysel Fikir Üretme (15 dk)
Herkes kendi başına problemleri yazıyor:
- Her problem bir post-it'e
- Eleştirme yok
- Miktar önemli, kalite değil
- Hedef: Kişi başı 10+ problem

Kategoriler:
- Kampüs yaşamı
- Ders çalışma
- Sosyal aktiviteler
- Yönetim işleri
- Teknoloji kullanımı

### 2. Paylaşma ve Gruplama (15 dk)
- Her kişi problemlerini duvara asıyor
- Benzer problemler gruplanıyor
- Kategoriler oluşturuluyor

### 3. Oylama (10 dk)
Her kişi 3 favori problemini işaretliyor:
- En çok oy alan 5 problem seçiliyor

### 4. Derinleştirme (15 dk)
Top 5 problemi tartışın:
- Gerçekten yaşanıyor mu?
- Kaç kişi yaşıyor?
- Mevcut çözümler neler?
- Çözülmeye değer mi?

### 5. Karar (5 dk)
Kriterler bazında puanlama yapın
```

**Puanlama Matrisi**:

| Problem | Gerçeklik | Kapsam | Teknik | Yenilik | Öğrenme | Toplam |
|---------|-----------|--------|--------|---------|---------|--------|
| Not düzenleme | 5 | 4 | 5 | 3 | 4 | 21 |
| Yemek kuyruğu | 4 | 3 | 3 | 4 | 2 | 16 |
| Kayıp eşya | 4 | 4 | 4 | 4 | 4 | 20 |
| Grup proje | 3 | 3 | 4 | 2 | 3 | 15 |
| Ders seçimi | 5 | 5 | 3 | 2 | 3 | 18 |

(1=En düşük, 5=En yüksek)

**Seçim**: En yüksek puanlı (Not düzenleme: 21)

### Teknik 6: Trend ve Teknoloji Bazlı

**Yöntem**: Yeni teknolojileri mevcut problemlere uygulama

**Adımlar**:

1. **Trend Teknolojileri Listeleyin**:
```
- Yapay Zeka / Machine Learning
- Blockchain
- IoT (Internet of Things)
- AR/VR
- Ses kontrolü
- Computer Vision
- NLP (Doğal Dil İşleme)
```

2. **Kampüs/Öğrenci Problemlerini Listeleyin**:
```
- Kayıp eşya
- Ders programı çakışmaları
- Kalabalık yerleri tespit
- Kitap/not paylaşımı
- Grup çalışması organizasyonu
```

3. **Kombinasyon Matrisi Oluşturun**:

| Teknoloji | Problem | Potansiyel Çözüm |
|-----------|---------|------------------|
| Computer Vision | Kayıp eşya | Fotoğrafla eşya tanıma ve eşleştirme |
| IoT | Kalabalık tespiti | Sensörlerle kafe/kütüphane doluluk oranı |
| ML | Ders programı | Öğrenci tercihlerine göre akıllı öneri |
| NLP | Not arama | Doğal dille not arama ("geçen hafta anlatılan integral...") |
| AR | Kampüs rehberi | Telefon kamerası ile kampüs navigasyonu |

4. **Fizibıl Olanları Değerlendirin**:
```
Computer Vision + Kayıp Eşya:
✅ Teknik olarak mümkün (OpenCV, TensorFlow)
✅ Gerçek problemi çözüyor
⚠️ Biraz zor ama öğrenilebilir
✅ Yenilikçi

Karar: İyi bir seçenek!
```

---

## Gerçek Dünya Problemleri vs Akademik Problemler

### Gerçek Dünya Problemleri

**Özellikler**:
- Gerçek kullanıcılar var
- Somut değer yaratıyor
- Çözüm kullanılacak
- İş dünyasına yakın

**Örnekler**:
```
✅ Kampüste kayıp eşya bulma platformu
   → Gerçek kullanıcı: Öğrenciler
   → Değer: Zaman tasarrufu, eşya bulma
   → Kullanım: Aktif kullanım beklenir

✅ Yerel esnaf için stok yönetimi
   → Gerçek kullanıcı: Bakkallar, küçük işletmeler
   → Değer: Envanter takibi, sipariş optimizasyonu
   → Kullanım: Günlük kullanım

✅ Öğrenci ders notu paylaşım platformu
   → Gerçek kullanıcı: Öğrenciler
   → Değer: Not bulma, organize olma
   → Kullanım: Sınav dönemlerinde aktif
```

**Avantajlar**:
- Motivasyon yüksek (gerçek etki)
- Kullanıcı testi yapılabilir
- Portföye değerli
- İş fırsatlarına yol açabilir

**Zorluklar**:
- Kullanıcı edinimi gerekli
- Pazarlama ve tanıtım
- Uzun vadeli bakım

### Akademik Problemler

**Özellikler**:
- Araştırma odaklı
- Teorik katkı
- Yayın potansiyeli
- Bilimsel yöntem

**Örnekler**:
```
📚 Yeni bir makine öğrenmesi algoritması
   → Hedef: Mevcut algoritmalardan daha iyi performans
   → Değer: Bilimsel katkı
   → Kullanım: Araştırmacılar, gelecekte endüstri

📚 Grafik rendering optimizasyonu
   → Hedef: Render süresini %X azaltma
   → Değer: Teorik ve pratik katkı
   → Kullanım: Oyun/grafik motorları

📚 Ağ protokolü güvenlik analizi
   → Hedef: Zafiyetleri tespit ve çözüm önerisi
   → Değer: Güvenlik iyileştirmesi
   → Kullanım: Sistem yöneticileri, yazılımcılar
```

**Avantajlar**:
- Bilimsel derinlik
- Yayın/konferans fırsatı
- Akademik kariyer için artı
- Yüksek lisans hazırlığı

**Zorluklar**:
- Karmaşık, zaman alıcı
- Kullanıcı testi zor
- Somut ürün çıkmayabilir
- Motivasyon düşebilir

### Hibrit Yaklaşım (Önerilen)

**En İyi**: Gerçek problem + Akademik yaklaşım

**Örnek**:
```
Problem: Öğrenciler ders notlarını organize edemıyor (Gerçek Dünya)

Çözüm: Makine öğrenmesi ile otomatik not sınıflandırma (Akademik)

Sonuç:
✅ Gerçek kullanıcılar var
✅ Teknik zorluk ve öğrenme var
✅ Potansiyel yayın: "Eğitim materyallerinde ML tabanlı sınıflandırma"
✅ Portföy projesi
✅ Ölçülebilir metrikler
```

**Başka Örnekler**:

```
1. Kampüs Navigasyonu + AR
   - Gerçek: Öğrenciler yerlerini bulamıyor
   - Akademik: AR tabanlı indoor navigation
   - Yayın: "Kampüslerde AR ile İç Mekan Navigasyonu"

2. Yerel Esnaf Satış Tahmini + ML
   - Gerçek: Esnaflar stok yönetiminde zorluk yaşıyor
   - Akademik: Zaman serisi analizi ile talep tahmini
   - Yayın: "Küçük İşletmeler İçin Talep Tahmin Modeli"

3. Öğrenci Mental Sağlık + NLP
   - Gerçek: Öğrenciler stres yönetimi konusunda destek araıyor
   - Akademik: Duygu analizi ile erken uyarı sistemi
   - Yayın: "Eğitim Ortamlarında Duygu Analizi"
```

### Hangi Yaklaşımı Seçmeli?

**Gerçek Dünya Odaklı Seçin**:
```
- Hızlıca kullanıcı kazanmak istiyorsanız
- Startup kurmak istiyorsanız
- Somut etki görmek istiyorsanız
- İş dünyasına yönelmek istiyorsanız
```

**Akademik Odaklı Seçin**:
```
- Yüksek lisansa devam etmeyi planlıyorsanız
- Araştırmacı olmak istiyorsanız
- Teorik derinlik seviyorsanız
- Yayın yapmak istiyorsanız
```

**Hibrit Seçin** (Çoğunluk İçin Önerilen):
```
- Hem kullanıcı hem bilim istiyorsanız
- Balanced bir deneyim istiyorsanız
- Farklı kariyer opsiyonlarını açık tutmak istiyorsanız
```

---

## Örnek Problem Alanları

### Kategori 1: Kampüs Yaşamı

**Problem Alanları**:

1. **Yemek ve Beslenme**
```
Problemler:
- Uzun kuyruklar
- Menü bilgisi eksikliği
- Yemek kalitesi şikayetleri
- Özel diyet ihtiyaçları

Potansiyel Çözümler:
- Mobil sipariş ve ödeme sistemi
- Canlı kuyruk durumu
- Menü planlama ve besin değeri bilgisi
- Diyet tercihlerine göre öneri sistemi
```

2. **Ulaşım ve Mobilite**
```
Problemler:
- Kampüs servis bilgisi yetersiz
- İç kampüs navigasyonu zor
- Bisiklet paylaşımı organize değil
- Yolculuk planlaması

Potansiyel Çözümler:
- Gerçek zamanlı servis takibi
- AR tabanlı indoor navigation
- Bisiklet paylaşım platformu
- Akıllı rota önerileri
```

3. **Mekan ve Alan Kullanımı**
```
Problemler:
- Kütüphane/kafe doluluk bilgisi yok
- Toplantı odası rezervasyonu zor
- Boş sınıf bulma zorluğu
- Sessiz çalışma alanı yetersiz

Potansiyel Çözümler:
- IoT sensörleriyle doluluk takibi
- Online rezervasyon sistemi
- Boş sınıf görüntüleme
- Çalışma arkadaşı eşleştirme
```

### Kategori 2: Akademik ve Öğrenim

**Problem Alanları**:

1. **Not Alma ve Düzenleme**
```
Problemler:
- Notlar dağınık ve düzensiz
- Sınav öncesi hızlı erişim yok
- Farklı formatlar (PDF, Word, fotoğraf)
- Paylaşım zorluğu

Potansiyel Çözümler:
- Merkezi not yönetim platformu
- Akıllı arama ve etiketleme
- Markdown tabanlı editör
- Grup çalışması için paylaşım
```

2. **Ders Seçimi ve Planlama**
```
Problemler:
- Ders çakışmaları
- Hoca yorumları dağınık
- Müfredat bilgisi eksik
- Seçim stratejisi belirsiz

Potansiyel Çözümler:
- Akıllı ders önerisi (ML tabanlı)
- Hoca değerlendirme platformu
- Çakışma kontrolü
- Mezuniyet planı simülasyonu
```

3. **Grup Projeleri**
```
Problemler:
- Takım üyesi bulma zor
- Görev dağılımı dengesiz
- İletişim kopuklukları
- İlerleme takibi yok

Potansiyel Çözümler:
- Beceri bazlı eşleştirme platformu
- Görev yönetimi ve tracking
- Entegre iletişim araçları
- Katkı metriği gösterimi
```

### Kategori 3: Sosyal ve Topluluk

**Problem Alanları**:

1. **Etkinlik ve Aktiviteler**
```
Problemler:
- Etkinliklerden haberdar olmama
- İlgi alanına göre öneri yok
- Katılım organize değil
- Geçmiş etkinlik kaydı yok

Potansiyel Çözümler:
- Merkezi etkinlik platformu
- Kişiselleştirilmiş öneriler
- Kolay kayıt ve hatırlatıcılar
- Sosyal profil ve ilgi analizi
```

2. **Kulüp ve Topluluklar**
```
Problemler:
- Kulüpleri keşfetme zor
- Üyelik yönetimi manuel
- İletişim dağınık
- Bütçe ve kaynak takibi yok

Potansiyel Çözümler:
- Kulüp rehberi ve filtreleme
- Üyelik ve aktivite yönetimi
- Merkezi iletişim platformu
- Bütçe tracking ve raporlama
```

3. **Kayıp ve Buluntu**
```
Problemler:
- Kayıp eşya bulma zor
- WhatsApp grupları etkisiz
- Ofis prosedürü yavaş
- Eşleştirme manuel

Potansiyel Çözümler:
- Fotoğraf bazlı kayıt ve arama
- Konum bazlı bildirimler
- QR kod ile hızlı claim
- ML ile otomatik eşleştirme
```

### Kategori 4: Kariyer ve Gelişim

**Problem Alanları**:

1. **Staj ve İş Bulma**
```
Problemler:
- Fırsatlar dağınık
- CV hazırlama zorluğu
- Şirket bilgisi yetersiz
- Başvuru takibi yok

Potansiyel Çözümler:
- Merkezi staj platformu
- AI destekli CV builder
- Şirket incelemeleri
- Başvuru tracking dashboard
```

2. **Beceri Geliştirme**
```
Problemler:
- Hangi becerileri geliştirmeli?
- Kaynak önerileri dağınık
- İlerleme ölçümü yok
- Motivasyon düşük

Potansiyel Çözümler:
- Kişiselleştirilmiş öğrenme yolu
- Curated kaynak koleksiyonu
- Gamification ve ilerleme tracking
- Akran mentorluğu eşleştirme
```

### Kategori 5: Sağlık ve Yaşam

**Problem Alanları**:

1. **Mental Sağlık**
```
Problemler:
- Stres yönetimi
- Psikolojik destek erişimi
- Farkındalık eksikliği
- Sosyal destek ağı zayıf

Potansiyel Çözümler:
- Mood tracking ve analiz
- Anonim destek grupları
- Meditasyon/mindfulness rehberi
- Profesyonel yönlendirme sistemi
```

2. **Fiziksel Sağlık ve Spor**
```
Problemler:
- Spor arkadaşı bulma
- Sağlıklı beslenme bilgisi
- Egzersiz rutini oluşturma
- Motivasyon eksikliği

Potansiyel Çözümler:
- Spor partneri eşleştirme
- Besin ve kalori tracking
- Kişiselleştirilmiş workout planı
- Challenge ve gamification
```

---

## Problem Doğrulama Süreci

### Adım 1: Hızlı Validasyon (1 hafta)

**Checklist**:
```
□ 10 potansiyel kullanıcıyla konuştum
□ En az %50'si problemi onayladı
□ Mevcut çözümleri araştırdım
□ Eksiklikleri tespit ettim
□ Benzer projeleri inceledim
```

**Hızlı Anket**:
```markdown
# Problem Validasyon Anketi

1. Bu problemi ne sıklıkla yaşıyorsunuz?
   □ Günlük
   □ Haftalık
   □ Aylık
   □ Nadiren
   □ Hiç

2. Bu problem sizin için ne kadar önemli? (1-5)
   □ 1 (Hiç önemli değil)
   □ 2
   □ 3
   □ 4
   □ 5 (Çok önemli)

3. Şu anda nasıl çözüyorsunuz?
   [Açık uçlu]

4. Mevcut çözümden ne kadar memnunsunuz? (1-5)
   □ 1 (Hiç memnun değilim)
   □ 2
   □ 3
   □ 4
   □ 5 (Çok memnunum)

5. Daha iyi bir çözüm olsaydı kullanır mıydınız?
   □ Kesinlikle evet
   □ Muhtemelen evet
   □ Belki
   □ Muhtemelen hayır
   □ Kesinlikle hayır

6. Bu çözüm için ödeme yapar mıydınız?
   □ Evet (Maksimum: ___ TL/ay)
   □ Hayır
```

**Değerlendirme**:
```
Geçme Kriterleri:
✅ Soru 1: %50+ "Günlük" veya "Haftalık"
✅ Soru 2: Ortalama 3.5+
✅ Soru 4: Ortalama 3 altı (mevcut çözüm yetersiz)
✅ Soru 5: %70+ "Kesinlikle" veya "Muhtemelen evet"

Hepsi ✅ ise → Problem doğrulandı, devam et!
Değilse → Başka problem ara
```

### Adım 2: Derinlemesine Araştırma (1 hafta)

**Pazar Araştırması**:
```markdown
# Pazar Araştırması

## Hedef Kullanıcı Sayısı
- Kampüsteki öğrenci: 10.000
- Problemi yaşayan: %60 = 6.000
- Aktif kullanıcı tahmin: %10 = 600
- Karar: Yeterli pazar var ✅

## Rakip Analizi

| Rakip | Güçlü Yön | Zayıf Yön | Fark Yaratma |
|-------|-----------|-----------|--------------|
| Notion | Çok özellik | Karmaşık | Basitlik |
| OneNote | MS entegrasyon | Ağır | Hız |
| Google Keep | Basit | Organize yok | Organizasyon |

Fırsatlar:
- Öğrenciye özel özellikler
- Kampüs entegrasyonu
- Daha basit UX

## Teknoloji Analizi
- Frontend: React ✅ (Biliyoruz)
- Backend: Node.js ✅ (Öğrenilebilir)
- Database: PostgreSQL ✅ (Mevcut kaynak yeterli)
- Hosting: Vercel + Heroku ✅ (Ücretsiz tier)

Karar: Teknik olarak mümkün ✅
```

### Adım 3: MVP Tanımı (2-3 gün)

**Özellik Önceliklendirme**:

MoSCoW Metodu:
```
Must Have (Olmazsa Olmaz):
✅ Kullanıcı kaydı ve girişi
✅ Not oluşturma (Markdown)
✅ Not listeleme
✅ Basit arama

Should Have (Olmalı):
⭕ Etiketleme
⭕ Kategoriler
⭕ Paylaşım

Could Have (Olabilir):
🔵 Gelişmiş arama
🔵 Sürüm geçmişi
🔵 Kod highlighting

Won't Have (Şimdilik Yok):
❌ Real-time collaboration
❌ Mobile app
❌ AI önerileri
```

**MVP Özeti**:
```
"2 hafta içinde geliştirilecek, temel not alma
ve düzenleme özelliklerine sahip, öğrencilerin
ders notlarını markdown formatında organize
etmelerine olanak sağlayan web uygulaması."

Temel Özellikler:
- Kayıt/Giriş
- Not CRUD (Create, Read, Update, Delete)
- Markdown editör
- Basit arama
- Etiketler

Metrikler:
- 10 kullanıcı testinde %70 başarı oranı
- Ortalama not oluşturma süresi <2 dakika
```

---

## Problem Seçimi Karar Matrisi

**Tüm Adımları Birleştirin**:

```markdown
# Problem Değerlendirme Matrisi

## Problem: [Probleminizi Yazın]

### 1. Gerçeklik ve Değer (25 puan)
- Gerçek kullanıcılar var mı? (0-5): ___
- Problem sık yaşanıyor mu? (0-5): ___
- Mevcut çözümler yetersiz mi? (0-5): ___
- Çözüm değer yaratıyor mu? (0-5): ___
- Kullanıcılar kullanmak ister mi? (0-5): ___
**Toplam**: ___/25

### 2. Kapsam ve Fizibilite (20 puan)
- Süre uygun mu? (10-14 hafta) (0-5): ___
- MVP tanımlanabilir mi? (0-5): ___
- Teknik olarak mümkün mü? (0-5): ___
- Kaynak erişilebilir mi? (0-5): ___
**Toplam**: ___/20

### 3. Yenilik (15 puan)
- Farklı yaklaşım var mı? (0-5): ___
- Teknolojik yenilik var mı? (0-5): ___
- Rakiplerden ayırt edilebilir mi? (0-5): ___
**Toplam**: ___/15

### 4. Öğrenme Potansiyeli (20 puan)
- Yeni teknolojiler öğrenme (0-5): ___
- Teknik beceri geliştirme (0-5): ___
- Soft skill geliştirme (0-5): ___
- Portföy değeri (0-5): ___
**Toplam**: ___/20

### 5. Ölçülebilirlik (10 puan)
- Net başarı kriterleri var mı? (0-5): ___
- Metrikler tanımlanabilir mi? (0-5): ___
**Toplam**: ___/10

### 6. Motivasyon (10 puan)
- Takım ilgili mi? (0-5): ___
- Uzun vadeli ilgi sürdürülebilir mi? (0-5): ___
**Toplam**: ___/10

## TOPLAM PUAN: ___/100

## Karar:
- 80-100: Mükemmel, hemen başla! 🚀
- 60-79: İyi, küçük iyileştirmelerle devam 👍
- 40-59: Orta, problem tanımını netleştir 🤔
- 0-39: Zayıf, başka problem ara 🔄
```

---

## Sonuç ve Öneriler

### İyi Bir Problem Seçimi İçin Altın Kurallar

1. **Gerçek kullanıcılarla konuşun**: Varsayımlarınızı test edin
2. **Küçük başlayın**: MVP ile başlayıp büyütün
3. **Teknik olarak mümkün olsun**: Becerilerinize uygun
4. **Zamanı iyi planlayın**: 10-14 hafta için uygun kapsam
5. **Ölçülebilir olsun**: Başarıyı nasıl ölçeceğinizi bilin
6. **Tutkunuz olsun**: 14 hafta motivasyon gerekir

### Problem Seçimi Zaman Çizelgesi

```
Hafta 1: Problem keşfi ve brainstorming
  - Kişisel deneyim analizi
  - Kullanıcı gözlemleri
  - Online araştırma
  - 5-10 potansiyel problem listesi

Hafta 2: Doğrulama ve daraltma
  - 10+ kullanıcı görüşmesi
  - Hızlı anketler
  - Değerlendirme matrisi
  - En iyi 2-3 problem seçimi

Hafta 3: Derinlemesine analiz ve karar
  - Rakip analizi
  - Teknik fizibilite
  - MVP tanımı
  - Final karar
  - Proje önerisi hazırlığı başlasın

Hafta 4: Proje başlangıcı
  - Detaylı planlama
  - İlk prototip
```

İyi bir problem, başarılı bir projenin yarısıdır. Zaman ayırıp doğru problemi seçmek, sonrasında çok zaman ve enerji tasarrufu sağlar.
