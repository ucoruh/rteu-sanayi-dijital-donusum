# Python Sunum Kodu

## Otomatik PowerPoint Oluşturma

Bu sayfada workshop sunumunu otomatik olarak oluşturan Python kodunu bulabilirsiniz.

---

## İndirme

[**rteu_ultimate_presentation.py İndir**](../rteu_ultimate_presentation.py){ .md-button .md-button--primary }

---

## Özellikler

### Teknik Özellikler
- **Kütüphane**: `python-pptx`
- **Görsel Kaynakları**: Unsplash API + GitHub
- **Toplam Slayt**: 62
- **Format**: PPTX (PowerPoint)
- **Boyut**: 16" × 9" (Full HD)

### Tasarım Özellikleri
- ✅ Her slaytda progress bar (1/62, 2/62, ..., 62/62)
- ✅ Renkli progress bar (0-33% mavi, 33-66% mor, 66-100% yeşil)
- ✅ Otomatik görsel indirme ve ekleme
- ✅ %50 karartılmış arka plan görselleri
- ✅ Profesyonel font (Roboto, min 20pt)
- ✅ Tam ekran Design Thinking görseli

---

## Kurulum

### Gereksinimler

```bash
pip install python-pptx requests Pillow
```

### Kullanım

```bash
python rteu_ultimate_presentation.py
```

Kod çalıştığında:
1. İnternetten görseller indirilir
2. 62 slayt oluşturulur
3. `RTEU_Workshop_0351.pptx` dosyası kaydedilir

---

## Kod Yapısı

### Ana Sınıf: `RTEUPresentation`

```python
class RTEUPresentation:
    def __init__(self):
        self.prs = Presentation()
        self.prs.slide_width = Inches(16)
        self.prs.slide_height = Inches(9)
        self.slide_counter = 0
        self.total_slides = 62
```

### Temel Fonksiyonlar

#### 1. Progress Bar Ekleme

```python
def add_progress_bar(self, slide, current_slide, total_slides=62):
    """Her slayta progress bar ekler"""
    # Gri background bar
    # Renkli progress bar (percentage'e göre)
    # Slide numarası (örn: "15/62")
```

#### 2. Arka Plan Görseli

```python
def add_bg_image(self, slide, img_key, darken=0.5):
    """Unsplash'dan görsel indirir ve ekler"""
    # Görseli indir
    # %50 karart
    # Slide'a ekle
    # Progress bar'ı otomatik ekle
```

#### 3. Başlık Ekleme

```python
def add_title(self, slide, text, y_pos=1.5, font_size=54, color='primary'):
    """Slayta başlık ekler"""
    # Metni ortala
    # Renk ve boyut ayarla
```

#### 4. Liste/İçerik Ekleme

```python
def add_content_box(self, slide, items, x=1.5, y=3, width=13):
    """Bullet point listesi ekler"""
    # Her item için
    # Icon + metin
```

---

## Slayt İçeriği

### Bölüm 1: Açılış (Slayt 1-6)
- Ana başlık
- Konuşmacı tanıtımı
- Program akışı
- Öğrenme hedefleri
- Beklentiler

### Bölüm 2: Sanayi 4.0 (Slayt 7-16)
- Endüstri 4.0 tarihi
- Temel teknolojiler
- IoT, AI, Cloud, Big Data
- Türkiye'de Sanayi 4.0
- Başarı örnekleri

### Bölüm 3: AI Araçları (Slayt 17-28)
- AI neden gerekli?
- Claude & Claude Code
- ChatGPT & Gemini
- GitHub Copilot
- Prompt Engineering

### Bölüm 4: Fonlama (Slayt 29-36)
- Genel bakış
- TÜBİTAK 2209-A
- KOSGEB AR-GE
- Teknofest
- Uluslararası fonlar

### Bölüm 5: Mola (Slayt 37-38)
- Takım numaraları
- Hesap kurulumları

### Bölüm 6: Atölye (Slayt 39-57)
- **Design Thinking - Lean - Agile** (TAM EKRAN GÖRSEL!)
- Takım oluşturma
- Problem seçimi
- Proje önerisi formatı
- Araştırma yöntemleri
- Proje şablonları

### Bölüm 7: Kapanış (Slayt 58-62)
- Video anlatımı
- Sonraki adımlar
- Kaynaklar
- İletişim bilgileri

---

## Özelleştirme

### Renk Paleti Değiştirme

```python
self.colors = {
    'primary': RGBColor(63, 81, 181),    # Indigo
    'secondary': RGBColor(255, 152, 0),  # Orange
    'success': RGBColor(76, 175, 80),    # Green
    'warning': RGBColor(255, 193, 7),    # Yellow
    'danger': RGBColor(244, 67, 54),     # Red
    'info': RGBColor(33, 150, 243),      # Blue
    'purple': RGBColor(156, 39, 176),    # Purple
    'dark': RGBColor(33, 33, 33),
    'light': RGBColor(255, 255, 255)
}
```

### Yeni Slayt Ekleme

```python
# Slayt oluştur
s = self.prs.slides.add_slide(self.prs.slide_layouts[6])
self.slide_counter += 1

# Arka plan ekle
self.add_bg_image(s, 'technology', 0.4)

# Başlık ekle
self.add_title(s, "🎯 YENİ KONU", 1.5, 48, 'primary')

# İçerik ekle
content = [
    "Birinci madde",
    "İkinci madde",
    "Üçüncü madde"
]
self.add_content_box(s, content, 2, 3.5, 12)
```

---

## Görsel Kaynakları

Kod aşağıdaki kaynaklardan görselleri otomatik indirir:

### Unsplash (Ücretsiz, Yüksek Kalite)
```python
self.images = {
    'workshop': 'https://images.unsplash.com/photo-1531482615713-2afd69097998',
    'ai': 'https://images.unsplash.com/photo-1677442136019-21780ecad995',
    'funding': 'https://images.unsplash.com/photo-1579621970563-ebec7560ff3e',
    # ... daha fazlası
}
```

### GitHub (Özel Görseller)
```python
'design_thinking': 'https://raw.githubusercontent.com/ucoruh/rteu-sanayi-dijital-donusum/main/design-thinking-lean-agile-slide1.png'
```

---

## Sorun Giderme

### Görseller İndirilemiyor

```python
# Timeout süresini artırın
r = requests.get(url, timeout=30, headers=headers)  # 15 → 30

# Veya alternatif görsel kullanın
except Exception as e:
    print(f"Görsel yüklenemedi: {str(e)}")
    # Fallback: düz renkli arka plan
```

### Font Bulunamadı

```python
# Arial veya Calibri gibi sistem fontlarını kullanın
paragraph.font.name = "Arial"  # Roboto yerine
```

### Dosya Kaydetme Hatası

```python
# Dosya açıksa kapatın
# Veya farklı isimle kaydedin
self.prs.save(f"RTEU_Workshop_{datetime.now().strftime('%Y%m%d_%H%M%S')}.pptx")
```

---

## Performans İpuçları

1. **Görselleri Cache'leyin**: İndirilen görselleri saklayın
2. **Parallel İndirme**: Threading kullanarak hızlandırın
3. **Görsel Boyutunu Optimize Edin**: Çok büyük dosyalardan kaçının

---

## Lisans

Bu kod MIT lisansı altında açık kaynak olarak paylaşılmıştır. İstediğiniz gibi kullanabilir, değiştirebilir ve dağıtabilirsiniz.

---

## Katkıda Bulunma

İyileştirme önerilerinizi GitHub Issues üzerinden paylaşabilirsiniz:

[GitHub Repository](https://github.com/ucoruh/rteu-sanayi-dijital-donusum){ .md-button }
