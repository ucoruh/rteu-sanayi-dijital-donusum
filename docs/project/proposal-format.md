# TÜBİTAK 2209-A Proje Önerisi Format Rehberi

## Giriş

TÜBİTAK 2209-A Üniversite Öğrencileri Araştırma Projeleri Destekleme Programı, lisans öğrencilerinin araştırma ve proje deneyimi kazanması için en önemli fırsatlardan biridir. Bu rehber, başarılı bir proje önerisi hazırlamanız için detaylı bilgi sunmaktadır.

---

## TÜBİTAK 2209-A Programı Hakkında

### Genel Bilgiler

**Amaç**: Lisans öğrencilerinin bilimsel araştırma deneyimi kazanması

**Kimler Başvurabilir**:
- Lisans 2, 3, 4. sınıf öğrencileri
- En fazla 3 öğrenci (1 proje sorumlusu + 2 yürütücü)
- Minimum 2.00 genel not ortalaması

**Süre ve Bütçe**:
- Proje süresi: Maksimum 12 ay
- Destek tutarı: Aylık öğrenci burs desteği + proje masrafları
- Burs: Ayda yaklaşık 3.000-4.000 TL (değişkenlik gösterebilir)

**Başvuru Dönemleri**:
- Yılda 2 dönem (Genellikle Mart ve Ekim)
- Tarihleri TÜBİTAK web sitesinden takip edin

**Değerlendirme Kriterleri**:
1. Bilimsel/Teknolojik kalite (40%)
2. Yöntem (25%)
3. Özgünlük ve yenilik (20%)
4. Proje ekibi yeterliliği (15%)

---

## Başvuru Formu Bölümleri

### Bölüm 1: Proje Özeti

**Karakter Sınırı**: Genellikle 250-500 kelime

**İçerik**:
- Projenin amacı (1-2 cümle)
- Problemin tanımı (2-3 cümle)
- Kullanılacak yöntem (2-3 cümle)
- Beklenen sonuçlar ve katkı (2-3 cümle)

**Nasıl Yazılır**:

```markdown
## Proje Özeti Yapısı

1. Giriş Cümlesi (Bağlam):
   "...[alan] alanında ...[problem] önemli bir sorundur."

2. Mevcut Durum ve Eksiklik:
   "Mevcut yaklaşımlar ...[eksiklikler] nedeniyle yetersizdir."

3. Proje Amacı:
   "Bu proje, ...[çözüm] geliştirerek ...[hedef] amaçlamaktadır."

4. Yöntem:
   "...[metodoloji] kullanılarak ...[yaklaşım] uygulanacaktır."

5. Beklenen Katkı:
   "Sonuçların ...[bilimsel katkı] ve ...[pratik katkı] sağlaması beklenmektedir."
```

**Örnek - İyi Özet**:

```
Üniversite öğrencilerinin ders notlarını organize etme ve erişim süreçlerinde
önemli zorluklar yaşadığı, yapılan kullanıcı araştırmalarında tespit edilmiştir.
Mevcut not alma uygulamaları genel amaçlı olup, akademik not organizasyonuna
özel özellikler sunmamaktadır.

Bu proje, makine öğrenmesi tabanlı otomatik not sınıflandırması ve
semantik arama özellikleriyle donatılmış, web tabanlı bir akademik not
yönetim sistemi geliştirmeyi amaçlamaktadır.

Proje kapsamında, doğal dil işleme (NLP) teknikleri kullanılarak notların
otomatik kategorizasyonu, TF-IDF ve BERT tabanlı semantik arama motoru
geliştirilecek ve kullanıcı deneyimi optimizasyonu yapılacaktır.

Sistemin, öğrencilerin not erişim süresini %70 oranında azaltması ve
organizasyon verimliliğini artırması hedeflenmektedir. Sonuçların,
eğitim teknolojileri alanında akademik not yönetimi literatürüne
katkı sağlaması beklenmektedir.

(147 kelime)
```

**Örnek - Zayıf Özet** (Kaçınılacaklar):

```
❌ Bu projede bir not uygulaması yapacağız. Öğrenciler notlarını
tutabilecek. Uygulama web tabanlı olacak ve React kullanacağız.
Sonunda güzel bir uygulama olacak.

Sorunlar:
- Bilimsel derinlik yok
- Yöntem belirsiz
- Katkı tanımlı değil
- Çok genel ve sığ
- Bilimsel dil kullanılmamış
```

**İpuçları**:
- Özetle başlayıp sonra detayları yazmayın; önce tüm öneriyı yazın, en sonda özeti hazırlayın
- Özet, tüm projenin mini versiyonu olmalı
- Teknik terimler kullanın ama açıklayın
- Sayısal hedefler verin (%70 azalma gibi)
- Pasif değil, aktif cümleler kullanın

### Bölüm 2: Amaç ve Kapsam

**Alt Başlıklar**:
1. Projenin Amacı
2. Kapsam
3. Bilimsel/Teknolojik Hedefler

**2.1 Projenin Amacı**

```markdown
## Amaç Yazımı Şablonu

Genel Amaç:
"Bu projenin genel amacı, ...[problem] çözmek için ...[yaklaşım]
kullanarak ...[çözüm] geliştirmektir."

Spesifik Amaçlar:
1. ...[teknik hedef 1] gerçekleştirmek
2. ...[teknik hedef 2] sağlamak
3. ...[bilimsel hedef] araştırmak
4. ...[pratik hedef] oluşturmak
```

**Örnek**:

```
Genel Amaç:
Bu projenin genel amacı, üniversite öğrencilerinin akademik not yönetimi
süreçlerini iyileştirmek için makine öğrenmesi ve doğal dil işleme
tekniklerini kullanarak akıllı bir not yönetim sistemi geliştirmektir.

Spesifik Amaçlar:
1. Akademik notların otomatik olarak ders, konu ve önem seviyesine göre
   sınıflandırılmasını sağlayan bir makine öğrenmesi modeli geliştirmek

2. Kullanıcıların doğal dilde arama yapmalarına olanak tanıyan semantik
   arama motoru oluşturmak

3. Notlar arasındaki kavramsal ilişkileri tespit ederek otomatik öneri
   sistemi geliştirmek

4. Sistemin kullanılabilirliğini ve öğrenci başarısına etkisini deneysel
   olarak değerlendirmek
```

**2.2 Kapsam**

```markdown
## Kapsam Tanımı

Projenin Kapsamında:
✅ ...[dahil olan özellik/çalışma 1]
✅ ...[dahil olan özellik/çalışma 2]
✅ ...[dahil olan özellik/çalışma 3]

Projenin Kapsamı Dışında:
❌ ...[kapsam dışı kalan 1] (Neden: ...)
❌ ...[kapsam dışı kalan 2] (Neden: ...)
```

**Örnek**:

```
Projenin Kapsamında:
✅ Türkçe akademik metinler için NLP tabanlı sınıflandırma modeli geliştirme
✅ Web tabanlı kullanıcı arayüzü ve backend API geliştirme
✅ TF-IDF ve BERT modellerinin performans karşılaştırması
✅ 100 kullanıcı ile kullanılabilirlik testi
✅ Not erişim süresi ve organizasyon verimliliği metriklerinin ölçümü

Projenin Kapsamı Dışında:
❌ Mobil uygulama geliştirme (Zaman ve kaynak kısıtı nedeniyle)
❌ Çok dilli destek (İlk versiyonda sadece Türkçe odaklanılacak)
❌ Gerçek zamanlı işbirliği özellikleri (Proje karmaşıklığını artırır)
❌ Notların sesli kaydı (Farklı bir araştırma konusu)
```

**2.3 Bilimsel/Teknolojik Hedefler**

```markdown
## Hedef Tanımı (SMART)

Her hedef için:
- Specific (Belirli): Net ve anlaşılır
- Measurable (Ölçülebilir): Sayısal metrik
- Achievable (Ulaşılabilir): 12 ayda mümkün
- Relevant (İlgili): Projeye katkılı
- Time-bound (Zamanlı): Tarih belirli
```

**Örnek**:

```
Hedef 1: Sınıflandırma Modeli
- Ne: Supervised learning ile not kategorizasyonu modeli
- Metrik: Minimum %85 doğruluk oranı
- Yöntem: SVM, Random Forest, BERT karşılaştırması
- Süre: 1-4. aylar
- Veri seti: 5000+ etiketlenmiş not örneği

Hedef 2: Semantik Arama Motoru
- Ne: Doğal dil sorguları ile anlam bazlı not arama
- Metrik: Top-5 sonuçta %90+ ilgili döküman
- Yöntem: TF-IDF baseline + BERT sentence embeddings
- Süre: 4-7. aylar
- Değerlendirme: 50 kullanıcı ile precision/recall ölçümü

Hedef 3: Kullanılabilirlik İyileştirme
- Ne: Kullanıcı deneyimi optimizasyonu
- Metrik: System Usability Scale (SUS) skoru >75
- Yöntem: Iterative design + A/B testing
- Süre: 8-10. aylar
- Katılımcı: 100 öğrenci

Hedef 4: Verimlilik Değerlendirmesi
- Ne: Sistemin not erişim süresine etkisini ölçme
- Metrik: %70 azalma (ortalama 60 sn'den 18 sn'ye)
- Yöntem: Kontrollü deney (kontrol vs. deney grubu)
- Süre: 10-12. aylar
- Katılımcı: 2 grup x 25 kişi = 50 öğrenci
```

### Bölüm 3: Literatür Özeti ve Mevcut Durum

**Amaç**: Konunun bilimsel arka planını göstermek ve projenizin özgünlüğünü vurgulamak

**Yapı**:

```markdown
## Literatür Özeti Yapısı

1. Giriş (1 paragraf)
   - Araştırma alanının önemi
   - Genel bağlam

2. İlgili Çalışmalar (3-5 paragraf)
   - Tema 1: [Konu] üzerine çalışmalar
   - Tema 2: [Konu] üzerine çalışmalar
   - Tema 3: [Konu] üzerine çalışmalar
   - Her paragrafta 3-5 kaynak

3. Mevcut Eksiklikler (1-2 paragraf)
   - Literatürdeki boşluklar
   - Mevcut çözümlerin yetersizlikleri

4. Projenizin Katkısı (1 paragraf)
   - Eksiklikleri nasıl gidereceğiniz
   - Özgün yanınız
```

**Nasıl Yazılır**:

**Adım 1: Literatür Taraması**
- Google Scholar, IEEE Xplore, arXiv
- Anahtar kelimeler: "note-taking", "knowledge management", "NLP education"
- Son 5 yıl odaklı, en az 15-20 kaynak
- Hem uluslararası hem Türkçe kaynaklar

**Adım 2: Kaynak Gruplandırma**
```
Grup 1: Dijital Not Alma Sistemleri
- [1] Smith et al. (2020) - Evernote benzeri sistemler
- [2] Jones (2021) - Notion ve modüler not yapıları
- [3] Brown & Lee (2019) - Akademik not organizasyonu

Grup 2: NLP Eğitim Uygulamaları
- [4] Chen et al. (2022) - Otomatik metin sınıflandırma
- [5] Wang (2021) - BERT eğitim materyallerinde
- [6] Garcia & Martinez (2020) - Semantik arama

Grup 3: Kullanıcı Deneyimi Çalışmaları
- [7] Taylor et al. (2021) - Öğrenci not alma davranışları
- [8] Anderson (2020) - Dijital araç kullanımı
```

**Adım 3: Yazım**

**Örnek Paragraf** (İyi):

```
Dijital not alma sistemleri üzerine yapılan çalışmalar, genel amaçlı
çözümlerin yaygınlığını göstermektedir. Mueller ve Oppenheimer (2014),
dijital not almanın bilgi işleme süreçlerindeki etkilerini incelemiş
ve yapılandırılmış not almanın öğrenme çıktılarını iyileştirdiğini
bulmuştur. Kin Lane (2020), modern not alma uygulamalarının (Notion,
Roam Research) modüler yapıları ve linkleme özellikleriyle bilgi
organizasyonuna yeni yaklaşımlar sunduğunu göstermiştir. Ancak, Agarwal
ve Bain (2019), mevcut sistemlerin akademik notlara özel özelliklere
(ders bağlamı, sınavla ilişki, kaynak yönetimi) sahip olmadığını ve
öğrencilerin manuel organizasyon yükü yaşadığını belirtmiştir.
```

**Örnek Paragraf** (Kötü - Kaçının):

```
❌ Not alma önemlidir. İnsanlar notlarını organize etmek ister.
Bazı uygulamalar vardır. Biz daha iyisini yapacağız.

Sorunlar:
- Kaynak yok
- Yüzeysel
- Bilimsel dil yok
- Eleştirel değerlendirme yok
```

**Literatür Özeti İpuçları**:
- Her iddianızı kaynak ile destekleyin
- "...[yazar] et al. (yıl) göstermiştir ki..." formatı kullanın
- Sadece özetlemeyin, karşılaştırın ve eleştirin
- Eksikliklere doğru yönlendirin
- Parafraz yapın, alıntı yapmayın (özel durumlar hariç)

**Mevcut Durum ve Eksiklikler Örneği**:

```
Literatür incelemesi, dijital not alma sistemlerinin üç temel eksikliğini
ortaya koymaktadır:

1. Bağlam Eksikliği: Mevcut uygulamalar (Evernote, OneNote, Notion),
   notların hangi ders, konu veya sınav ile ilişkili olduğunu otomatik
   olarak tespit edememekte, kullanıcıdan manuel etiketleme istemektedir
   (Chen et al., 2021). Bu durum, öğrencilerin %67'sinin notlarını
   düzenli kategorisize etmediğini gösteren araştırmalarla
   desteklenmektedir (Taylor, 2020).

2. Semantik Arama Yetersizliği: Geleneksel anahtar kelime tabanlı arama,
   kullanıcının tam ifadeyi hatırlamasını gerektirmekte ve kavramsal
   ilişkileri yakalayamamaktadır (Wang & Liu, 2022). Örneğin, "integral
   hesaplama yöntemleri" araması, "kalkülüs teknikleri" içeren notları
   bulamamaktadır.

3. Kişiselleştirme Eksikliği: Mevcut sistemler, öğrencilerin bireysel
   öğrenme stillerine ve not alma tercihlerine göre adapte olamamakta,
   tek tip çözümler sunmaktadır (Agarwal et al., 2021).

Bu proje, yukarıdaki eksiklikleri NLP ve makine öğrenmesi teknikleriyle
gidermeyi, özellikle Türkçe akademik metin işlemeye odaklanmayı
hedeflemektedir. Literatürde Türkçe eğitim materyallerine özel not
yönetim sistemleri üzerine sınırlı çalışma bulunması (Yılmaz, 2019),
bu projenin özgün değerini artırmaktadır.
```

### Bölüm 4: Materyal ve Yöntem

**Amaç**: Projeyi nasıl gerçekleştireceğinizi detaylandırmak

**Yapı**:

```markdown
## Materyal ve Yöntem Yapısı

1. Araştırma Tasarımı
   - Genel yaklaşım
   - Metodoloji türü

2. Veri ve Materyal
   - Veri kaynakları
   - Veri seti özellikleri
   - Kullanılacak araçlar/teknolojiler

3. Yöntem Adımları
   - Adım 1: [İşlem]
   - Adım 2: [İşlem]
   - ...
   - Her adım için: Ne? Nasıl? Neden?

4. Değerlendirme ve Analiz
   - Başarı metrikleri
   - Test yöntemleri
   - İstatistiksel analizler

5. İş Planı (Gantt Chart)
   - Zaman çizelgesi
```

**4.1 Araştırma Tasarımı**

**Örnek**:

```
Bu proje, tasarım bilimi araştırması (design science research)
yaklaşımını benimsemektedir. Hevner et al. (2004) tarafından
önerilen framework çerçevesinde, problem tanımlama, çözüm tasarlama,
geliştirme, değerlendirme ve iletişim döngüsü takip edilecektir.

Proje, uygulamalı araştırma niteliğinde olup, hem artefact (yazılım
sistemi) geliştirme hem de deneysel değerlendirme içermektedir.
Nitel ve nicel araştırma yöntemleri birlikte kullanılacak (mixed-method),
kullanıcı deneyimi anketleri, performans metrikleri ve kontrollü
deneyler uygulanacaktır.
```

**4.2 Veri ve Materyal**

```markdown
## Veri Kaynakları

### Veri Seti 1: Eğitim Veri Seti
- **Kaynak**: [Nereden toplanacak]
- **Boyut**: [Örnek sayısı]
- **Özellikler**: [Neler içeriyor]
- **Etiketleme**: [Nasıl etiketlenecek]
- **Kullanım**: [Hangi amaçla]

### Veri Seti 2: Test Veri Seti
- ...

## Yazılım ve Teknolojiler

| Kategori | Araç/Teknoloji | Versiyon | Kullanım Amacı |
|----------|---------------|----------|----------------|
| Frontend | React | 18.x | Kullanıcı arayüzü |
| Backend | Node.js + Express | 18.x / 4.x | API sunucusu |
| ML/NLP | Python + scikit-learn | 3.10 / 1.2 | Model geliştirme |
| NLP | Transformers (HuggingFace) | 4.x | BERT modeli |
| Database | PostgreSQL | 14.x | Veri saklama |
| Hosting | Heroku / Vercel | - | Deployment |

## Donanım Kaynakları
- Geliştirme: Kişisel bilgisayarlar (16GB RAM, i5+ işlemci)
- Model eğitimi: Google Colab Pro (Tesla T4 GPU)
```

**Örnek - Detaylı Veri Seti Açıklaması**:

```
Eğitim Veri Seti:
Proje kapsamında kullanılacak veri seti, RTEU Bilgisayar Mühendisliği
bölümü öğrencilerinden gönüllülük esasına göre toplanacak ders notlarından
oluşacaktır. Etik kurul onayı alınacak ve katılımcılardan bilgilendirilmiş
onam formu toplanacaktır.

Veri Seti Özellikleri:
- Toplam not sayısı: ~5000 adet
- Ders alanları: Programlama, Matematik, Mühendislik Temelleri (3 kategori)
- Alt kategoriler: ~15 adet (örn. Veri Yapıları, Kalkülüs, Devreler)
- Format: Markdown ve düz metin
- Dil: Türkçe
- Ortalama uzunluk: 200-1000 kelime/not

Etiketleme Süreci:
- İlk aşama: Otomatik etiketleme (not başlığı ve meta veri ile)
- İkinci aşama: Manuel doğrulama (2 bağımsız değerlendirici)
- Çakışma durumu: Üçüncü değerlendirici karar verecek
- Cohen's Kappa >0.8 hedeflenmektedir (güvenilirlik)

Veri Artırımı:
- Paraphrase: Back-translation ile (TR→EN→TR)
- Synonym replacement
- Hedef: %20 artırım (6000 örneğe çıkarma)
```

**4.3 Yöntem Adımları**

**Şablon**:

```markdown
## Adım [X]: [Adım Adı]

**Amaç**: [Bu adımda ne yapılacak, neden önemli]

**Girdi**: [Neye ihtiyaç var]

**Süreç**:
1. [Alt işlem 1]
   - Araç: [Kullanılacak araç/yöntem]
   - Detay: [Nasıl yapılacak]

2. [Alt işlem 2]
   ...

**Çıktı**: [Ne üretilecek]

**Başarı Kriteri**: [Nasıl doğrulanacak]

**Süre**: [X-Y. aylar]

**Sorumlu**: [Ekip üyesi]
```

**Örnek - Tam Bir Adım**:

```
## Adım 2: Metin Ön İşleme ve Öznitelik Çıkarımı

**Amaç**: Ham not metinlerini makine öğrenmesi modellerine uygun formata
dönüştürmek ve anlamlı öznitelikler çıkarmak.

**Girdi**: Toplanan 5000 etiketli not metni (Adım 1'den)

**Süreç**:

1. Metin Temizleme
   - Araç: Python NLTK + Regex
   - İşlemler:
     * HTML/Markdown tag'lerini temizleme
     * Noktalama işaretlerini normalize etme
     * Sayısal ifadeleri tokenize etme
     * URL ve özel karakterleri kaldırma

2. Türkçe Doğal Dil İşleme
   - Araç: Zemberek-NLP
   - İşlemler:
     * Tokenization (kelime ayırma)
     * Stemming/Lemmatization (kök bulma)
     * Stop-word removal (sık kelime çıkarma)
     * POS tagging (optional - kelime türü)

3. Öznitelik Çıkarımı
   a) TF-IDF Vektörleri
      - Araç: scikit-learn TfidfVectorizer
      - Parametreler: max_features=5000, ngram_range=(1,3)

   b) BERT Embeddings
      - Araç: BERTurk (Turkish BERT model)
      - Embedding boyutu: 768
      - Max sequence length: 512 token

4. Boyut İndirgeme (Opsiyonel)
   - Araç: PCA / t-SNE
   - Amaç: Görselleştirme ve hız optimizasyonu

**Çıktı**:
- Temizlenmiş metin veri seti
- TF-IDF matris (5000 x 5000)
- BERT embedding matris (5000 x 768)
- Preprocessing pipeline (pickle dosyası)

**Başarı Kriteri**:
- Tüm metinler başarıyla işlendi mi? (100%)
- Token uzunluğu BERT limitini aşmıyor mu? (<512)
- Embedding kalitesi: Benzer notlar vektör uzayında yakın mı?
  (Cosine similarity >0.7 aynı kategori için)

**Süre**: 2-3. aylar

**Sorumlu**: Öğrenci 2 (Yürütücü) + Öğrenci 1 (Destek)
```

**Tüm Adımların Özeti Örneği**:

```
## Proje İş Akışı

Adım 1: Veri Toplama (1. ay)
→ Öğrencilerden not toplama, etiketleme

Adım 2: Metin Ön İşleme (2-3. ay)
→ Temizleme, NLP, öznitelik çıkarımı

Adım 3: Model Geliştirme (3-5. ay)
→ Sınıflandırma: SVM, RF, BERT karşılaştırması
→ Arama: TF-IDF + BERT semantic search

Adım 4: Web Uygulaması Geliştirme (4-7. ay)
→ Backend API (Node.js + Flask ML servisi)
→ Frontend (React)
→ Entegrasyon

Adım 5: Kullanılabilirlik Testi (8-9. ay)
→ 50 kullanıcı ile Alpha testi
→ Geri bildirim ve iyileştirme

Adım 6: Deneysel Değerlendirme (10-11. ay)
→ Kontrollü deney (50 kişi)
→ Metrik ölçümü ve analiz

Adım 7: Dokümantasyon ve Raporlama (11-12. ay)
→ Sonuç analizi
→ Final raporu
→ (Opsiyonel) Makale yazımı
```

**4.4 Değerlendirme ve Analiz**

```markdown
## Değerlendirme Metrikleri

### Teknik Metrikler (Model Performansı)

#### Sınıflandırma Modeli:
- Accuracy (Doğruluk): Doğru tahminler / Toplam
- Precision (Kesinlik): TP / (TP + FP)
- Recall (Duyarlılık): TP / (TP + FN)
- F1-Score: 2 * (Precision * Recall) / (Precision + Recall)
- Confusion Matrix: Kategori bazlı hata analizi

Hedef: F1-Score ≥ 0.85

#### Semantik Arama Motoru:
- Precision@K: Top-K sonuçta ilgili döküman oranı (K=5)
- Mean Reciprocal Rank (MRR): İlk ilgili sonucun sırası
- NDCG (Normalized Discounted Cumulative Gain): Sıralama kalitesi

Hedef: Precision@5 ≥ 0.90

### Kullanıcı Metrikleri

#### Kullanılabilirlik:
- System Usability Scale (SUS): Standart anket (10 soru)
  Hedef: SUS >75 (Good)

- Task Completion Rate: Görev tamamlama oranı
  Hedef: >90%

- Time on Task: Görev başına ortalama süre
  Hedef: Not oluşturma <2 dakika, Arama <10 saniye

#### Kullanıcı Memnuniyeti:
- Net Promoter Score (NPS): "Tavsiye eder misiniz?"
- Likert scale anketler (1-5): Memnuniyet, Faydalılık, Kullanım kolaylığı
  Hedef: Ortalama ≥4.0

### Verimlilik Metrikleri

#### Kontrollü Deney:
- **Kontrol Grubu**: Geleneksel yöntem (Google Drive + Word)
- **Deney Grubu**: Geliştirilen sistem

Ölçülen Değişkenler:
- Not erişim süresi: Sınav öncesi ilgili notu bulma (saniye)
  Hipotez: %70 azalma (60s → 18s)

- Organizasyon skoru: Notların düzenlilik derecesi (1-10)
  Hipotez: 6.2 → 8.5

- Sınav performansı: Notları kullanan öğrencilerin sınav başarısı
  Hipotez: %15 artış (opsiyonel, uzun vadeli)

## Analiz Yöntemleri

İstatistiksel Testler:
- Shapiro-Wilk test: Normallik kontrolü
- Independent t-test / Mann-Whitney U: Grup karşılaştırması
- Paired t-test: Ön-son test karşılaştırması
- ANOVA: 3+ grup karşılaştırması
- Chi-square: Kategorik veri analizi

Güven Aralığı: %95 (p<0.05)

Araç: Python (scipy.stats, statsmodels)
```

**4.5 İş Planı (Gantt Chart)**

**Tablo Formatı**:

| İş Paketi | Sorumlu | 1.Ay | 2.Ay | 3.Ay | 4.Ay | 5.Ay | 6.Ay | 7.Ay | 8.Ay | 9.Ay | 10.Ay | 11.Ay | 12.Ay |
|-----------|---------|------|------|------|------|------|------|------|------|------|-------|-------|-------|
| Veri Toplama | Öğr.2 | ████ |      |      |      |      |      |      |      |      |       |       |       |
| Literatür | Öğr.1 | ████ | ████ |      |      |      |      |      |      |      |       |       |       |
| Ön İşleme | Öğr.2 |      | ████ | ████ |      |      |      |      |      |      |       |       |       |
| Model Geliş. | Öğr.1 |      |      | ████ | ████ | ████ |      |      |      |      |       |       |       |
| Web Backend | Öğr.2 |      |      |      | ████ | ████ | ████ |      |      |      |       |       |       |
| Web Frontend | Öğr.1 |      |      |      | ████ | ████ | ████ | ████ |      |      |       |       |       |
| Entegrasyon | İkisi |      |      |      |      |      |      | ████ |      |      |       |       |       |
| Alpha Test | İkisi |      |      |      |      |      |      |      | ████ | ████ |       |       |       |
| Deney | Öğr.1 |      |      |      |      |      |      |      |      |      | ████  | ████  |       |
| Raporlama | İkisi |      |      |      |      |      |      |      |      |      |       | ████  | ████  |

**Kilometre Taşları** (Milestones):

```
M1 (1. ay sonu): Veri seti toplanmış ve etiketlenmiş
M2 (3. ay sonu): Preprocessing tamamlanmış, ilk model eğitilmiş
M3 (5. ay sonu): En iyi model seçilmiş, performans hedeflerine ulaşılmış
M4 (7. ay sonu): Web uygulaması alpha versiyonu çalışır durumda
M5 (9. ay sonu): Kullanılabilirlik testleri tamamlanmış, iyileştirmeler yapılmış
M6 (11. ay sonu): Deneysel değerlendirme tamamlanmış, sonuçlar analiz edilmiş
M7 (12. ay sonu): Final rapor ve (opsiyonel) makale tamamlanmış
```

### Bölüm 5: Beklenen Sonuçlar ve Tartışma

**Yapı**:

```markdown
1. Beklenen Bilimsel/Teknolojik Sonuçlar
   - Teknik çıktılar
   - Performans sonuçları
   - Yenilikler

2. Sonuçların Bilime ve Teknolojiye Katkısı
   - Bilimsel katkı
   - Pratik katkı
   - Toplumsal etki

3. Olası Riskler ve Alternatif Planlar
   - Risk analizi
   - Azaltma stratejileri
```

**Örnek**:

```
## Beklenen Bilimsel/Teknolojik Sonuçlar

1. Makine Öğrenmesi Modeli:
   - F1-score ≥0.85 ile Türkçe akademik metinleri kategorize eden model
   - SVM, Random Forest ve BERT karşılaştırmalı analizi
   - Beklenen sonuç: BERT'ün %5-10 daha iyi performans göstermesi

2. Semantik Arama Motoru:
   - Precision@5 ≥0.90 ile doğal dil sorgularını destekleyen arama
   - TF-IDF baseline'a göre %25-30 iyileşme
   - 10 saniye altında yanıt süresi

3. Web Tabanlı Sistem:
   - 1000+ eş zamanlı kullanıcıyı destekleyen scalable mimari
   - SUS skoru >75 ile kullanımı kolay arayüz
   - Açık kaynak olarak yayınlanacak (GitHub)

4. Deneysel Bulgular:
   - Not erişim süresinde %70 azalma (istatistiksel olarak anlamlı, p<0.05)
   - Organizasyon skorunda 6.2'den 8.5'e yükseliş
   - Kullanıcı memnuniyetinde 4.2/5 ortalama

## Sonuçların Katkısı

### Bilimsel Katkı:
- Türkçe eğitim metinlerinde NLP uygulamaları literatürüne katkı
- Akademik not organizasyonunda ML kullanımına dair ampirik bulgular
- BERTurk modelinin domain-specific fine-tuning'i için metodoloji

### Teknolojik Katkı:
- Eğitim teknolojileri alanında açık kaynak araç
- Türkçe NLP için yeniden kullanılabilir bileşenler (preprocessing pipeline)
- Benzer projelere referans mimarı

### Pratik Katkı:
- Öğrencilerin ders çalışma verimliliğini artırma
- Sınav hazırlık süreçlerini iyileştirme
- Bilgi yönetimi becerilerini destekleme

### Toplumsal Etki:
- Eğitimde dijital dönüşüme katkı
- Eşit erişim (ücretsiz, açık kaynak)
- Dijital okuryazarlık artırımı

## Olası Riskler ve Alternatif Planlar

### Risk 1: Yetersiz Veri Toplanamama
**Olasılık**: Orta | **Etki**: Yüksek
**Azaltma**:
- Erken başlangıç (1. ay)
- Teşvik mekanizması (sertifika, hediye çeki)
- Alternatif: Açık veri setleri kullanımı (Wikipedia Türkçe, açık ders notları)

### Risk 2: Model Hedef Performansa Ulaşamama (F1<0.85)
**Olasılık**: Düşük | **Etki**: Orta
**Azaltma**:
- Veri artırımı (data augmentation)
- Ensemble yöntemler (model kombinasyonu)
- Alternatif: Hedefi 0.80'e revize etme, yine de literatür üzeri

### Risk 3: Kullanıcı Katılımı Düşüklüğü (Test için)
**Olasılık**: Orta | **Etki**: Orta
**Azaltma**:
- Sınıf içi tanıtım
- Hocalardan destek
- Alternatif: Online anketlerle, daha geniş kitleye ulaşma

### Risk 4: Teknik Sorunlar (Hosting, API limitleri)
**Olasılık**: Düşük | **Etki**: Düşük
**Azaltma**:
- Yerel development ortamı her zaman hazır
- Alternatif ücretsiz platformlar (Railway, Fly.io)
- Üniversite sunucuları desteği
```

### Bölüm 6: Kaynaklar

**Format**: APA 7th Edition (veya TÜBİTAK'ın önerdiği format)

**Örnek Kaynaklar**:

```
Agarwal, P. K., & Bain, P. M. (2019). Powerful teaching: Unleash the
science of learning. Jossey-Bass.

Chen, M., Zhang, Y., & Liu, Q. (2021). Automatic classification of
educational materials using deep learning. International Journal of
Artificial Intelligence in Education, 31(2), 245-267.
https://doi.org/10.1007/s40593-020-00215-w

Hevner, A. R., March, S. T., Park, J., & Ram, S. (2004). Design science
in information systems research. MIS Quarterly, 28(1), 75-105.

Lane, K. (2020). The evolution of note-taking applications: From Evernote
to Roam Research. Journal of Digital Learning, 15(3), 112-128.

Mueller, P. A., & Oppenheimer, D. M. (2014). The pen is mightier than the
keyboard: Advantages of longhand over laptop note taking. Psychological
Science, 25(6), 1159-1168. https://doi.org/10.1177/0956797614524581

Taylor, S. J. (2020). Student note-taking behaviors in digital environments:
A mixed-methods study. Educational Technology Research and Development,
68(4), 1823-1842.

Wang, H., & Liu, Y. (2022). Semantic search in educational platforms:
Challenges and opportunities. Computers & Education, 178, 104401.

Yılmaz, A. (2019). Türkçe metin madenciliği uygulamaları. Papatya Yayınları.
```

**Kaynak Sayısı**:
- Minimum 15-20 kaynak
- Çeşitlilik: Makale, kitap, konferans bildirisi
- Güncellik: %60'ı son 5 yıl içinde
- Uluslararası + Türkçe dengesi

---

## Proje Bütçesi

**Kategoriler**:

1. **Sarf Malzeme Giderleri**
   - Kırtasiye
   - USB bellek, hard disk
   - Vb.

2. **Seyahat Giderleri**
   - Veri toplama için (varsa)
   - Konferans katılımı (varsa)

3. **Hizmet Alımı**
   - Cloud computing (Google Colab Pro)
   - Hosting/Domain (gerekirse)
   - Anket/test katılımcı ödülleri

4. **Diğer**
   - Yayın masrafları (varsa)

**Örnek Bütçe**:

| Kalem | Birim | Miktar | Birim Fiyat | Toplam | Gerekçe |
|-------|-------|--------|-------------|--------|---------|
| USB Flash Disk (64GB) | Adet | 2 | 200 TL | 400 TL | Yedekleme |
| Harici HDD (1TB) | Adet | 1 | 1.000 TL | 1.000 TL | Veri saklama |
| Kırtasiye | - | - | - | 300 TL | Döküman çıktı |
| Google Colab Pro | Ay | 6 | 10 USD (~300 TL) | 1.800 TL | Model eğitimi |
| Katılımcı Teşviki | Kişi | 100 | 50 TL | 5.000 TL | Test katılımı |
| Domain + Hosting | Yıl | 1 | 500 TL | 500 TL | Web yayını |
| **TOPLAM** | | | | **9.000 TL** | |

**Not**: TÜBİTAK bütçe limiti ve kategorileri yıldan yıla değişebilir. Güncel kılavuzu kontrol edin.

---

## Yazım İpuçları ve Sık Yapılan Hatalar

### Yapılması Gerekenler

**1. Bilimsel Dil Kullanın**
```
✅ "Sonuçların istatistiksel olarak anlamlı olması beklenmektedir (p<0.05)"
❌ "Güzel sonuçlar çıkacak"

✅ "Önerilen yaklaşım, mevcut literatürdeki çalışmalardan (Chen et al., 2021)
    farklı olarak..."
❌ "Bizimki daha iyi olacak"
```

**2. Spesifik ve Ölçülebilir Olun**
```
✅ "Not erişim süresini ortalama 60 saniyeden 18 saniyeye (%70 azalma)
    indirmeyi hedeflemekteyiz"
❌ "Not erişimi çok hızlanacak"
```

**3. Kaynak Gösterin**
```
✅ Her iddianın ardından kaynak
✅ Parafraz yapın, alıntı sınırlı
✅ Güncel kaynaklar (son 5 yıl)
```

**4. Net ve Organize Olun**
```
✅ Başlık-altbaşlık hiyerarşisi
✅ Numaralandırma ve madde işaretleri
✅ Tablo ve şekiller (gerektiğinde)
✅ Tutarlı format
```

### Yapılmaması Gerekenler

**1. Belirsiz İfadeler**
```
❌ "Çok iyi olacak"
❌ "Belki işe yarar"
❌ "Bir şekilde çözeceğiz"
❌ "Muhtemelen başarılı olur"
```

**2. Aşırı Teknik Detay veya Aşırı Sade**
```
❌ Fazla teknik: "LSTM'in gated memory cell'lerinde forget gate sigmoid
    aktivasyonuyla..."
    → Gerekmedikçe bu kadar detay yok

❌ Fazla sade: "Bilgisayarda program yapacağız"
    → Bilimsel derinlik yok
```

**3. Gerçekçi Olmayan Hedefler**
```
❌ "Dünyada ilk kez yapılacak"
❌ "Tüm problemleri çözecek"
❌ "1 ayda bitecek"
```

**4. Kopyala-Yapıştır**
```
❌ Başka önerilerden paragraflar kopyalamak
❌ Kaynağı belirtmeden alıntı
❌ Kendi önceki raporlarınızı tekrar kullanma (self-plagiarism)
```

### Format Kontrol Listesi

```
□ Sayfa sınırı aşılmadı mı? (Genellikle 15-20 sayfa)
□ Font ve boyut doğru mu? (Times New Roman, 12pt)
□ Satır aralığı doğru mu? (Genellikle 1.5)
□ Tüm bölümler tamamlanmış mı?
□ Kaynaklar doğru formatlanmış mı?
□ Tablolar ve şekiller numaralandırılmış mı?
□ Yazım hataları kontrol edildi mi?
□ PDF olarak kaydedildi mi?
```

---

## Örnek Proje Önerisi Taslağı

**Proje Başlığı**: Makine Öğrenmesi Tabanlı Akademik Not Yönetim Sistemi

**1. Proje Özeti** (250 kelime)
[Yukarıdaki örnekte verildi]

**2. Amaç ve Kapsam** (2 sayfa)
- Genel amaç: [...]
- Spesifik amaçlar: [4 adet]
- Kapsam: [Dahil/hariç]
- Hedefler: [4 SMART hedef]

**3. Literatür Özeti** (3-4 sayfa)
- Giriş: [Araştırma alanı]
- Tema 1: Dijital not sistemleri [5 kaynak]
- Tema 2: NLP eğitim uygulamaları [5 kaynak]
- Tema 3: Kullanıcı deneyimi [3 kaynak]
- Eksiklikler ve katkı: [...]

**4. Materyal ve Yöntem** (4-5 sayfa)
- Araştırma tasarımı: [Metodoloji]
- Veri ve materyal: [Veri setleri, araçlar]
- Yöntem adımları: [7 adım detaylı]
- Değerlendirme: [Metrikler, testler]
- İş planı: [Gantt chart]

**5. Beklenen Sonuçlar** (2 sayfa)
- Bilimsel/teknolojik sonuçlar: [4 çıktı]
- Katkı: [Bilimsel, pratik, toplumsal]
- Riskler ve alternatifler: [4 risk]

**6. Kaynaklar** (2 sayfa)
[20 kaynak, APA formatında]

**7. Bütçe** (1 sayfa)
[Detaylı tablo]

**Toplam**: ~15-18 sayfa

---

## Değerlendirme Sonrası

### Başvuru Kabul Edilirse

**Yapılacaklar**:
1. Sözleşme imzalama
2. Proje hesabı açma
3. Danışman ile düzenli toplantılar
4. Ara rapor hazırlama (6. ay)
5. Final rapor (12. ay)
6. Sunum (gerekirse)

**Dikkat**:
- Raporları zamanında teslim edin
- Bütçeyi plana uygun harcayın
- Değişiklikler için onay alın

### Başvuru Reddedilirse

**Nedenler ve Çözümler**:

1. **"Özgünlük yetersiz"**
   - Çözüm: Literatürü derinleştirin, farklılaşmayı netleştirin

2. **"Yöntem belirsiz"**
   - Çözüm: Adımları detaylandırın, ölçülebilir metrikler ekleyin

3. **"Kapsam aşırı/yetersiz"**
   - Çözüm: MVP'yi yeniden tanımlayın, hedefleri güncelleyin

4. **"Teknik fizibilite düşük"**
   - Çözüm: Pilot çalışma ekleyin, alternatif yaklaşımlar gösterin

**Geri Bildirimlerden Öğrenin**:
- Değerlendirici yorumlarını dikkatlice okuyun
- Bir sonraki dönem için revize edin
- Danışmanınızla değerlendirin

---

## Ek Kaynaklar ve Destek

### TÜBİTAK Kaynakları

- **Başvuru Kılavuzu**: [TÜBİTAK Web Sitesi](https://www.tubitak.gov.tr/tr/destekler/akademik/ulusal-destek-programlari/2209-a/icerik-basvuru-kosullari)
- **Sık Sorulan Sorular**: FAQ bölümü
- **Önceki Dönem İstatistikleri**: Kabul oranları

### Üniversite Kaynakları

- **Proje Ofisi**: Başvuru desteği
- **Danışman**: Teknik ve bilimsel rehberlik
- **Kütüphane**: Literatür tarama desteği
- **Yazım Merkezi**: Dil ve format kontrolü

### Çevrimiçi Araçlar

**Literatür**:
- Google Scholar
- IEEE Xplore
- arXiv
- Web of Science

**Yazım**:
- Grammarly / LanguageTool (dil kontrolü)
- Zotero / Mendeley (kaynak yönetimi)
- Overleaf (LaTeX için)

**Proje Yönetimi**:
- Trello / Notion (görev takibi)
- GitHub (kod ve döküman)
- Google Drive (dosya paylaşımı)

---

## Sonuç

Başarılı bir TÜBİTAK 2209-A önerisi hazırlamak için:

1. **Erken başlayın**: Başvuru 2-3 ay öncesinden hazırlık
2. **Araştırın**: Literatürü detaylı tarayın
3. **Gerçekçi olun**: Yapılabilir hedefler koyun
4. **Detaylı olun**: Yöntemi net açıklayın
5. **Bilimsel olun**: Akademik dil ve kaynaklar
6. **Geri bildirim alın**: Danışman, akranlar, proje ofisi
7. **Revize edin**: Birden fazla taslak hazırlayın
8. **Kontrol edin**: Son bir kez tüm bölümleri gözden geçirin

İyi bir proje önerisi, hem bilimsel derinlik hem pratik uygulanabilirlik dengesini yakalar. Zamanınızı iyi planlayarak, detaylı çalışarak başarılı bir başvuru hazırlayabilirsiniz.

Başarılar!
