# Proje Şablonları ve Dokümantasyon Rehberi

## Giriş

Bu belge, öğrenci projelerinde kullanılmak üzere hazırlanmış şablonlar, dokümantasyon yapısı ve GitHub repo organizasyon rehberi içermektedir.

---

## README.md Şablonu

### Temel README Yapısı

```markdown
# Proje Adı

Projenizin kısa ve çarpıcı bir açıklaması (1-2 cümle)

![Proje Banner veya Logo](images/banner.png)

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/username/repo.svg)](https://github.com/username/repo/stargazers)
[![GitHub issues](https://img.shields.io/github/issues/username/repo.svg)](https://github.com/username/repo/issues)

## İçindekiler

- [Hakkında](#hakkında)
- [Özellikler](#özellikler)
- [Teknolojiler](#teknolojiler)
- [Kurulum](#kurulum)
- [Kullanım](#kullanım)
- [Ekran Görüntüleri](#ekran-görüntüleri)
- [Katkıda Bulunma](#katkıda-bulunma)
- [Lisans](#lisans)
- [İletişim](#iletişim)

## Hakkında

Projenizin detaylı açıklaması. Aşağıdaki soruları yanıtlayın:

- **Ne**: Bu proje nedir?
- **Neden**: Bu proje neden gerekli?
- **Nasıl**: Problemi nasıl çözüyor?
- **Kim**: Hedef kullanıcı kimler?

### Problem

Çözdüğünüz problemi açıklayın:

> "Üniversite öğrencileri, farklı kaynaklardan aldıkları ders notlarını
> organize etmekte ve sınav öncesi hızlı erişim sağlamakta zorlanmaktadır.
> Mevcut not alma uygulamaları genel amaçlı olup, akademik not yönetimi
> için özelleştirilmiş özellikler sunmamaktadır."

### Çözüm

Sizin çözümünüzü özetleyin:

> "Bu proje, makine öğrenmesi tabanlı otomatik not sınıflandırması ve
> semantik arama özellikleriyle donatılmış, öğrencilere özel bir akademik
> not yönetim platformu sunmaktadır."

## Özellikler

- ✨ **Otomatik Sınıflandırma**: Notlarınız otomatik olarak ders ve konulara göre kategorize edilir
- 🔍 **Semantik Arama**: Doğal dilde arama yapın, ilgili tüm notları bulun
- 📝 **Markdown Desteği**: Kod, formül ve diyagramlarla zenginleştirilmiş notlar
- 🏷️ **Akıllı Etiketleme**: Yapay zeka destekli otomatik etiket önerileri
- 📊 **İstatistikler**: Not alma alışkanlıklarınızı görselleştirin
- 🌙 **Dark Mode**: Gözlerinizi yormayan karanlık tema
- 📱 **Responsive Tasarım**: Tüm cihazlarda sorunsuz çalışır

## Teknolojiler

### Frontend
- [React](https://reactjs.org/) - UI framework
- [Tailwind CSS](https://tailwindcss.com/) - Styling
- [React Router](https://reactrouter.com/) - Routing
- [Axios](https://axios-http.com/) - HTTP client

### Backend
- [Node.js](https://nodejs.org/) - Runtime
- [Express.js](https://expressjs.com/) - Web framework
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Prisma](https://www.prisma.io/) - ORM

### Machine Learning
- [Python](https://www.python.org/) - Programming language
- [scikit-learn](https://scikit-learn.org/) - ML library
- [Transformers](https://huggingface.co/transformers/) - BERT models
- [Flask](https://flask.palletsprojects.com/) - ML API service

### DevOps
- [Docker](https://www.docker.com/) - Containerization
- [GitHub Actions](https://github.com/features/actions) - CI/CD
- [Vercel](https://vercel.com/) - Frontend hosting
- [Heroku](https://www.heroku.com/) - Backend hosting

## Kurulum

### Gereksinimler

- Node.js (v18.x veya üzeri)
- Python (v3.10 veya üzeri)
- PostgreSQL (v14.x veya üzeri)
- npm veya yarn

### Adım Adım Kurulum

1. **Repository'yi Klonlayın**

```bash
git clone https://github.com/username/repo.git
cd repo
```

2. **Backend Kurulumu**

```bash
cd backend
npm install

# .env dosyası oluşturun
cp .env.example .env

# Veritabanını başlatın
npx prisma migrate dev
npx prisma db seed

# Sunucuyu başlatın
npm run dev
```

3. **Frontend Kurulumu**

```bash
cd frontend
npm install

# .env dosyası oluşturun
cp .env.example .env

# Development server başlatın
npm start
```

4. **ML Service Kurulumu**

```bash
cd ml-service
python -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate

pip install -r requirements.txt

# Model indir (ilk çalıştırma)
python scripts/download_models.py

# Servisi başlat
python app.py
```

5. **Tarayıcınızda Açın**

```
Frontend: http://localhost:3000
Backend API: http://localhost:5000
ML Service: http://localhost:8000
```

### Docker ile Kurulum

```bash
# Tüm servisleri başlat
docker-compose up -d

# Logları görüntüle
docker-compose logs -f

# Durdur
docker-compose down
```

## Kullanım

### Hızlı Başlangıç

1. **Kayıt Olun / Giriş Yapın**
   - Ana sayfadan "Kayıt Ol" butonuna tıklayın
   - E-posta ve şifrenizi girin

2. **İlk Notunuzu Oluşturun**
   - "Yeni Not" butonuna tıklayın
   - Markdown editörde notunuzu yazın
   - Sistem otomatik olarak ders ve konu etiketleri önerecek

3. **Notlarınızı Arayın**
   - Arama çubuğuna doğal dilde sorgunuzu yazın
   - Örnek: "geçen hafta anlattığı integral yöntemleri"

4. **Sınav Hazırlığı**
   - İlgili dersi seçin
   - Tüm notlarınız önünüze gelir
   - PDF olarak export edin

### Örnek Kullanım Senaryoları

**Senaryo 1: Hızlı Not Alma**
```markdown
# Veri Yapıları - Bağlı Listeler

## Tanım
Bağlı liste, düğümlerden (node) oluşan doğrusal veri yapısı.

## Türleri
- Tekli bağlı liste (Singly Linked List)
- Çift bağlı liste (Doubly Linked List)
- Dairesel bağlı liste (Circular Linked List)

## Kod Örneği
\`\`\`python
class Node:
    def __init__(self, data):
        self.data = data
        self.next = None
\`\`\`

#veri-yapıları #bağlı-liste #data-structures
```

**Senaryo 2: Semantik Arama**
```
Sorgu: "Hangi sıralama algoritması en hızlı?"

Sonuçlar:
1. "Algoritma Analizi - Sıralama Karşılaştırması"
   → Quick Sort, Merge Sort zaman karmaşıklığı
2. "Big-O Notation"
   → O(n log n) açıklaması
3. "Pratik Uygulamalar"
   → Gerçek dünya performans testleri
```

## Ekran Görüntüleri

### Ana Sayfa
![Ana Sayfa](screenshots/home.png)

### Not Editörü
![Editör](screenshots/editor.png)

### Arama Sonuçları
![Arama](screenshots/search.png)

### Dashboard
![Dashboard](screenshots/dashboard.png)

## API Dokümantasyonu

### Authentication

**POST /api/auth/register**
```json
Request:
{
  "email": "user@example.com",
  "password": "securepass123",
  "name": "Ahmet Yılmaz"
}

Response: 201 Created
{
  "user": {
    "id": "uuid",
    "email": "user@example.com",
    "name": "Ahmet Yılmaz"
  },
  "token": "jwt-token"
}
```

**POST /api/auth/login**
```json
Request:
{
  "email": "user@example.com",
  "password": "securepass123"
}

Response: 200 OK
{
  "user": {...},
  "token": "jwt-token"
}
```

### Notes

**GET /api/notes**
```
Headers: Authorization: Bearer {token}

Response: 200 OK
{
  "notes": [
    {
      "id": "uuid",
      "title": "Veri Yapıları - Bağlı Listeler",
      "content": "...",
      "tags": ["veri-yapıları", "bağlı-liste"],
      "course": "Veri Yapıları",
      "createdAt": "2024-01-15T10:30:00Z",
      "updatedAt": "2024-01-15T11:00:00Z"
    }
  ],
  "total": 42
}
```

**POST /api/notes**
```json
Request:
{
  "title": "Algoritma Analizi",
  "content": "# Big-O Notation\n\n...",
  "tags": ["algoritma", "big-o"]
}

Response: 201 Created
{
  "note": {
    "id": "uuid",
    ...
  },
  "suggestedTags": ["time-complexity", "analysis"],
  "suggestedCourse": "Algoritma ve Programlama"
}
```

**GET /api/notes/search?q={query}**
```
Örnek: /api/notes/search?q=sıralama algoritması

Response: 200 OK
{
  "results": [
    {
      "note": {...},
      "relevanceScore": 0.95,
      "matchedSections": ["Quick Sort açıklaması", ...]
    }
  ]
}
```

Tüm API dokümantasyonu için: [API_DOCS.md](docs/API_DOCS.md)

## Testler

### Unit Tests

```bash
# Backend tests
cd backend
npm test

# Frontend tests
cd frontend
npm test

# Coverage raporu
npm run test:coverage
```

### Integration Tests

```bash
npm run test:integration
```

### E2E Tests

```bash
npm run test:e2e
```

## Deployment

### Production Build

```bash
# Frontend build
cd frontend
npm run build

# Backend build (TypeScript varsa)
cd backend
npm run build
```

### Environment Variables

**.env.example**
```bash
# Backend
NODE_ENV=production
PORT=5000
DATABASE_URL=postgresql://user:pass@localhost:5432/dbname
JWT_SECRET=your-secret-key
ML_SERVICE_URL=http://localhost:8000

# Frontend
REACT_APP_API_URL=https://api.yourapp.com
REACT_APP_ML_API_URL=https://ml.yourapp.com
```

### Vercel (Frontend)

```bash
# Vercel CLI ile
vercel --prod

# veya GitHub entegrasyonu ile otomatik
```

### Heroku (Backend)

```bash
heroku create your-app-name
heroku addons:create heroku-postgresql
git push heroku main
heroku run npx prisma migrate deploy
```

## Proje Yapısı

```
project-root/
├── frontend/                 # React frontend
│   ├── public/
│   ├── src/
│   │   ├── components/      # React components
│   │   ├── pages/           # Page components
│   │   ├── hooks/           # Custom hooks
│   │   ├── utils/           # Utility functions
│   │   ├── api/             # API client
│   │   ├── context/         # React context
│   │   └── App.js
│   ├── package.json
│   └── README.md
│
├── backend/                  # Node.js backend
│   ├── src/
│   │   ├── controllers/     # Route controllers
│   │   ├── models/          # Database models (Prisma)
│   │   ├── routes/          # Express routes
│   │   ├── middleware/      # Custom middleware
│   │   ├── utils/           # Helper functions
│   │   └── server.js
│   ├── prisma/
│   │   ├── schema.prisma
│   │   └── migrations/
│   ├── tests/
│   ├── package.json
│   └── README.md
│
├── ml-service/               # Python ML service
│   ├── app.py               # Flask app
│   ├── models/              # ML models
│   ├── services/            # Business logic
│   │   ├── classifier.py
│   │   └── search.py
│   ├── utils/
│   ├── requirements.txt
│   └── README.md
│
├── docs/                     # Documentation
│   ├── API_DOCS.md
│   ├── ARCHITECTURE.md
│   ├── CONTRIBUTING.md
│   └── USER_GUIDE.md
│
├── scripts/                  # Utility scripts
│   ├── seed.js
│   └── deploy.sh
│
├── .github/
│   └── workflows/
│       └── ci.yml           # GitHub Actions
│
├── docker-compose.yml
├── .gitignore
├── LICENSE
└── README.md
```

## Katkıda Bulunma

Katkılarınızı bekliyoruz! Lütfen aşağıdaki adımları izleyin:

1. Fork'layın
2. Feature branch oluşturun (`git checkout -b feature/AmazingFeature`)
3. Değişikliklerinizi commit edin (`git commit -m 'Add some AmazingFeature'`)
4. Branch'inizi push edin (`git push origin feature/AmazingFeature`)
5. Pull Request açın

Detaylar için: [CONTRIBUTING.md](CONTRIBUTING.md)

### Code of Conduct

Bu projeye katkıda bulunanların [Code of Conduct](CODE_OF_CONDUCT.md) kurallarına uyması beklenir.

## Yol Haritası

- [x] Temel not alma ve listeleme
- [x] Markdown desteği
- [x] Otomatik sınıflandırma (ML)
- [x] Semantik arama
- [ ] Mobil uygulama (React Native)
- [ ] Real-time işbirliği
- [ ] Sesli not alma
- [ ] PDF import
- [ ] Flashcard oluşturma
- [ ] Spaced repetition sistemi

## Lisans

Bu proje [MIT Lisansı](LICENSE) altında lisanslanmıştır.

## İletişim

**Proje Sorumlusu**: Ahmet Yılmaz

- Email: ahmet.yilmaz@example.com
- LinkedIn: [linkedin.com/in/ahmetyilmaz](https://linkedin.com/in/ahmetyilmaz)
- GitHub: [@ahmetyilmaz](https://github.com/ahmetyilmaz)

**Proje Linki**: [https://github.com/username/repo](https://github.com/username/repo)

**Canlı Demo**: [https://demo.yourapp.com](https://demo.yourapp.com)

## Teşekkürler

- TÜBİTAK 2209-A programına destek için
- Danışman hocamız Dr. X'e rehberliği için
- [Açık kaynak kütüphane] geliştiricilerine
- Beta test kullanıcılarımıza

## Alıntı

Akademik çalışmalarda bu projeyi kullanırsanız, lütfen aşağıdaki gibi alıntı yapın:

```
Yılmaz, A., & Demir, B. (2024). AcademicNotes: ML-Powered Note Management
System for Students. GitHub. https://github.com/username/repo
```

---

Proje hakkında sorularınız için [issue açabilir](https://github.com/username/repo/issues)
veya [discussions](https://github.com/username/repo/discussions) kullanabilirsiniz.
```

---

## CONTRIBUTING.md Şablonu

```markdown
# Katkıda Bulunma Rehberi

Projeye katkıda bulunmak istediğiniz için teşekkür ederiz! Bu rehber, katkı sürecini açıklamaktadır.

## İçindekiler

- [Davranış Kuralları](#davranış-kuralları)
- [Nasıl Katkıda Bulunabilirim?](#nasıl-katkıda-bulunabilirim)
- [Geliştirme Süreci](#geliştirme-süreci)
- [Kod Standartları](#kod-standartları)
- [Commit Mesajları](#commit-mesajları)
- [Pull Request Süreci](#pull-request-süreci)

## Davranış Kuralları

Bu proje [Contributor Covenant](https://www.contributor-covenant.org/) davranış kurallarını benimsemiştir.
Katılarak bu kurallara uymayı kabul etmiş olursunuz.

## Nasıl Katkıda Bulunabilirim?

### Bug Raporlama

Bug bulduysanız, lütfen [issue açın](https://github.com/username/repo/issues/new) ve şunları ekleyin:

- Bug'ın açık ve net bir tanımı
- Adım adım tekrarlama yöntemi
- Beklenen davranış
- Gerçekleşen davranış
- Ekran görüntüleri (varsa)
- Ortam bilgileri (OS, browser, versiyon)

**Bug Raporu Şablonu**:

```markdown
## Bug Tanımı
[Açık ve net tanım]

## Tekrarlama Adımları
1. '...' sayfasına git
2. '...' butonuna tıkla
3. Aşağı kaydır
4. Hatayı gör

## Beklenen Davranış
[Ne olması gerektiği]

## Gerçekleşen Davranış
[Ne olduğu]

## Ekran Görüntüleri
[Varsa ekleyin]

## Ortam
- OS: [ör. Windows 11]
- Browser: [ör. Chrome 120]
- Versiyon: [ör. 1.2.3]
```

### Özellik İsteği

Yeni özellik öneriniz varsa, [issue açın](https://github.com/username/repo/issues/new):

- Özelliğin net tanımı
- Motivasyon (neden gerekli)
- Olası uygulama yöntemi
- Alternatifler (değerlendirdiğiniz)

### Kod Katkısı

1. Issue seçin veya oluşturun
2. Issue'yu kendinize atayın (assign)
3. Fork yapın
4. Branch oluşturun
5. Kod yazın
6. Test edin
7. Pull request açın

## Geliştirme Süreci

### 1. Kurulum

```bash
# Fork'ladığınız repo'yu klonlayın
git clone https://github.com/YOUR-USERNAME/repo.git
cd repo

# Upstream ekleyin (original repo)
git remote add upstream https://github.com/ORIGINAL-OWNER/repo.git

# Bağımlılıkları yükleyin
npm install
```

### 2. Branch Oluşturma

```bash
# Main'den güncel bilgileri çekin
git checkout main
git pull upstream main

# Feature branch oluşturun
git checkout -b feature/your-feature-name

# veya bug fix için
git checkout -b fix/bug-description
```

**Branch İsimlendirme**:
- `feature/` - Yeni özellikler
- `fix/` - Bug düzeltmeleri
- `docs/` - Dokümantasyon
- `refactor/` - Code refactoring
- `test/` - Test ekleme/düzeltme
- `chore/` - Bakım işleri

### 3. Kod Yazma

- Mevcut kod stiline uyun
- Anlamlı değişken/fonksiyon isimleri kullanın
- Kod yorumları ekleyin (gerektiğinde)
- Testler yazın

### 4. Test Etme

```bash
# Unit tests
npm test

# Tüm testler
npm run test:all

# Linting
npm run lint

# Format kontrolü
npm run format:check
```

### 5. Commit

```bash
git add .
git commit -m "feat: add semantic search feature"
```

### 6. Push ve Pull Request

```bash
git push origin feature/your-feature-name
```

GitHub'da Pull Request açın.

## Kod Standartları

### JavaScript/React

```javascript
// ✅ İyi örnek
const getUserNotes = async (userId) => {
  try {
    const notes = await api.get(`/users/${userId}/notes`);
    return notes.data;
  } catch (error) {
    logger.error('Failed to fetch user notes', error);
    throw error;
  }
};

// ❌ Kötü örnek
const getstuff = async (id) => {
  const d = await api.get('/users/'+id+'/notes');
  return d.data;
};
```

**Kurallar**:
- ESLint kurallarına uyun
- Prettier ile formatlanmış olsun
- Fonksiyonlar tek sorumluluk prensibi (SRP)
- Magic number'lar kullanmayın
- PropTypes veya TypeScript kullanın

### Python

```python
# ✅ İyi örnek
def classify_note(note_content: str) -> Dict[str, Any]:
    """
    Classify a note into categories using ML model.

    Args:
        note_content: The text content of the note

    Returns:
        Dictionary containing predicted category and confidence

    Raises:
        ValueError: If note_content is empty
    """
    if not note_content:
        raise ValueError("Note content cannot be empty")

    processed_text = preprocess(note_content)
    prediction = model.predict(processed_text)

    return {
        'category': prediction.label,
        'confidence': prediction.score
    }

# ❌ Kötü örnek
def classify(n):
    p = model.predict(n)
    return p
```

**Kurallar**:
- PEP 8 stiline uyun
- Type hints kullanın
- Docstrings yazın (Google style)
- Black ile formatlanmış olsun

### Git Commit Mesajları

**Conventional Commits** formatını kullanıyoruz:

```
<type>(<scope>): <subject>

<body>

<footer>
```

**Type**:
- `feat`: Yeni özellik
- `fix`: Bug düzeltme
- `docs`: Dokümantasyon
- `style`: Formatting, noktalı virgül vb
- `refactor`: Kod iyileştirme (ne feat ne fix)
- `test`: Test ekleme/düzeltme
- `chore`: Build, bağımlılık güncellemeleri

**Örnekler**:

```
feat(search): add semantic search functionality

Implement BERT-based semantic search that allows natural language queries.
Users can now search notes using phrases instead of exact keywords.

Closes #123
```

```
fix(auth): resolve token expiration issue

Previously, JWT tokens were expiring prematurely due to incorrect
timezone handling. Fixed by using UTC timestamps.

Fixes #456
```

```
docs(readme): update installation instructions

Added Docker setup steps and troubleshooting section.
```

**Kurallar**:
- Subject 50 karakter altında
- İlk harf küçük, nokta yok
- Imperative mood ("add" not "added")
- Body 72 karakterde wrap
- Footer'da issue referansı

### Pull Request Süreci

#### PR Açma

1. **Başlık**: Net ve açıklayıcı
   ```
   feat: Add semantic search with BERT model
   ```

2. **Açıklama**: PR template kullanın

```markdown
## Değişiklik Türü
- [ ] Bug fix (non-breaking change)
- [x] New feature (non-breaking change)
- [ ] Breaking change (fix veya feature that would cause existing functionality to change)
- [ ] Documentation update

## Açıklama
BERT tabanlı semantik arama özelliği eklendi. Kullanıcılar artık doğal dilde
sorgu yazabilir ve ilgili notları bulabilir.

## Nasıl Test Edildi?
- [ ] Unit tests yazıldı
- [x] Integration tests eklendi
- [x] Manuel test yapıldı
- [ ] E2E tests güncellendi

## Test Senaryoları
1. Doğal dil sorgusu: "geçen hafta anlattığı integral"
2. Kısa sorgu: "quicksort"
3. Typo ile sorgu: "algoritama" (algorithm)

## Screenshots (varsa)
[Ekran görüntüleri]

## Checklist
- [x] Kodum proje stil kurallarına uygun
- [x] Kendi kodumu review ettim
- [x] Kod yorumları ekledim (özellikle zor kısımlarda)
- [x] Dokümantasyon güncelledim
- [x] Değişikliklerim uyarı üretmiyor
- [x] Unit testler ekledim
- [x] Tüm testler geçiyor
- [ ] Bağımlı değişiklikler merge edildi

## İlgili Issue
Closes #123
Related to #124
```

#### Review Süreci

1. En az 1 onay gerekli
2. Tüm CI testleri geçmeli
3. Conflict olmamalı
4. Review yorumları giderilmeli

#### Reviewer İçin

- Kod kalitesini kontrol edin
- Testleri çalıştırın
- Dokümantasyonu okuyun
- Yapıcı geri bildirim verin

**İyi Yorum**:
```
Bu fonksiyon çok uzun olmuş. `validateUser` ve `createSession`
olarak iki fonksiyona ayırabilir misin? Böylece test etmek de
kolaylaşır.
```

**Kötü Yorum**:
```
Bu kod çok kötü.
```

#### Merge

- **Squash and merge**: Tercih edilen (clean history)
- **Rebase and merge**: Feature branch'leri için
- **Merge commit**: Büyük feature'lar için

## Kodlama Stilleri

### Dosya Organizasyonu

```
component/
├── ComponentName.jsx      # Component
├── ComponentName.test.jsx # Tests
├── ComponentName.module.css # Styles
└── index.js               # Export
```

### Naming Conventions

```javascript
// Components: PascalCase
const UserProfile = () => { ... };

// Functions: camelCase
const getUserData = () => { ... };

// Constants: UPPER_SNAKE_CASE
const API_BASE_URL = 'https://api.example.com';

// Private: _underscore prefix
const _privateMethod = () => { ... };
```

### Import Order

```javascript
// 1. React ve üçüncü parti kütüphaneler
import React, { useState } from 'react';
import axios from 'axios';

// 2. Absolute imports
import { api } from '@/api';
import { Button } from '@/components';

// 3. Relative imports
import { helper } from './utils';
import styles from './Component.module.css';
```

## Dokümantasyon

### Kod Yorumları

```javascript
/**
 * Authenticates user with email and password.
 *
 * @param {string} email - User email address
 * @param {string} password - User password
 * @returns {Promise<Object>} User object with auth token
 * @throws {AuthenticationError} If credentials are invalid
 *
 * @example
 * const user = await authenticateUser('user@example.com', 'pass123');
 * console.log(user.token);
 */
const authenticateUser = async (email, password) => {
  // Implementation
};
```

### README Güncelleme

Yeni özellik eklerseniz:
- README.md'de özellikler listesini güncelleyin
- Kullanım örnekleri ekleyin
- API dokümantasyonunu güncelleyin

## İlk Katkı

İlk kez katkıda bulunuyorsanız:

1. **Good First Issue** etiketli issue'lara bakın
2. Küçük başlayın (typo düzeltme, dokümantasyon)
3. Sorularınızı sormaktan çekinmeyin
4. Community'den yardım isteyin

## Yardım Alma

- [GitHub Discussions](https://github.com/username/repo/discussions)
- [Discord Server](https://discord.gg/...)
- Email: contributors@example.com

## Teşekkürler

Katkılarınız için teşekkür ederiz! Her katkı, büyük veya küçük, önemlidir.
```

---

## LICENSE Örneği (MIT)

```
MIT License

Copyright (c) 2024 [Adınız]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

---

## .gitignore Şablonu

```gitignore
# Dependencies
node_modules/
bower_components/
venv/
env/
__pycache__/
*.py[cod]

# Build outputs
dist/
build/
*.egg-info/
.next/
out/

# IDE
.vscode/
.idea/
*.swp
*.swo
*~

# OS
.DS_Store
Thumbs.db

# Logs
logs/
*.log
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# Environment
.env
.env.local
.env.development.local
.env.test.local
.env.production.local

# Testing
coverage/
.nyc_output/
.pytest_cache/

# Database
*.sqlite
*.db

# Secrets
*.pem
*.key
secrets/

# Misc
.cache/
*.bak
*.tmp
```

---

## GitHub Actions CI/CD Örneği

`.github/workflows/ci.yml`:

```yaml
name: CI/CD Pipeline

on:
  push:
    branches: [ main, develop ]
  pull_request:
    branches: [ main, develop ]

jobs:
  test:
    runs-on: ubuntu-latest

    strategy:
      matrix:
        node-version: [16.x, 18.x]

    steps:
    - uses: actions/checkout@v3

    - name: Use Node.js ${{ matrix.node-version }}
      uses: actions/setup-node@v3
      with:
        node-version: ${{ matrix.node-version }}
        cache: 'npm'

    - name: Install dependencies
      run: npm ci

    - name: Run linter
      run: npm run lint

    - name: Run tests
      run: npm test

    - name: Upload coverage
      uses: codecov/codecov-action@v3
      with:
        file: ./coverage/coverage-final.json

  build:
    needs: test
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v3

    - name: Use Node.js
      uses: actions/setup-node@v3
      with:
        node-version: 18.x

    - name: Install dependencies
      run: npm ci

    - name: Build
      run: npm run build

    - name: Upload build artifacts
      uses: actions/upload-artifact@v3
      with:
        name: build
        path: build/

  deploy:
    needs: build
    runs-on: ubuntu-latest
    if: github.ref == 'refs/heads/main'

    steps:
    - uses: actions/checkout@v3

    - name: Deploy to Vercel
      uses: amondnet/vercel-action@v20
      with:
        vercel-token: ${{ secrets.VERCEL_TOKEN }}
        vercel-org-id: ${{ secrets.ORG_ID}}
        vercel-project-id: ${{ secrets.PROJECT_ID}}
        vercel-args: '--prod'
```

---

## Proje Yönetimi Şablonları

### Issue Template

`.github/ISSUE_TEMPLATE/bug_report.md`:

```markdown
---
name: Bug Report
about: Create a report to help us improve
title: '[BUG] '
labels: bug
assignees: ''
---

## Bug Tanımı
Açık ve net bir tanım yazın.

## Tekrarlama Adımları
1. '...' git
2. '...' tıkla
3. '...' kaydır
4. Hatayı gör

## Beklenen Davranış
Ne olması gerektiğini açıklayın.

## Ekran Görüntüleri
Varsa ekleyin.

## Ortam
 - OS: [ör. Windows 11]
 - Browser: [ör. Chrome]
 - Versiyon: [ör. 1.0.0]

## Ek Bilgi
Başka bir şey eklemek isterseniz.
```

`.github/ISSUE_TEMPLATE/feature_request.md`:

```markdown
---
name: Feature Request
about: Suggest an idea for this project
title: '[FEATURE] '
labels: enhancement
assignees: ''
---

## Özellik İsteği İle İlgili Bir Problem Var mı?
Problemi açıklayın. Örn. "... yaparken hep sıkıntı yaşıyorum"

## İstediğiniz Çözümü Tanımlayın
Ne istediğinizi net bir şekilde açıklayın.

## Değerlendirdiğiniz Alternatifler
Başka hangi çözümleri düşündünüz?

## Ek Bağlam
Ekran görüntüleri, mockup'lar vb.
```

### Pull Request Template

`.github/pull_request_template.md`:

```markdown
## Değişiklik Türü
- [ ] Bug fix
- [ ] New feature
- [ ] Breaking change
- [ ] Documentation update

## Açıklama
[Değişikliklerinizi açıklayın]

## İlgili Issue
Closes #[issue numarası]

## Nasıl Test Edildi?
- [ ] Unit tests
- [ ] Integration tests
- [ ] Manuel test

## Checklist
- [ ] Kodum stil kurallarına uygun
- [ ] Kendi review'ımı yaptım
- [ ] Yorumlar ekledim
- [ ] Dokümantasyon güncelledim
- [ ] Testler geçiyor
```

---

## Dokümantasyon Yapısı

```
docs/
├── README.md                 # Genel bakış
├── getting-started/
│   ├── installation.md
│   ├── quick-start.md
│   └── configuration.md
├── api/
│   ├── authentication.md
│   ├── notes.md
│   ├── search.md
│   └── users.md
├── guides/
│   ├── note-taking.md
│   ├── searching.md
│   └── organization.md
├── architecture/
│   ├── overview.md
│   ├── frontend.md
│   ├── backend.md
│   └── ml-service.md
├── development/
│   ├── setup.md
│   ├── testing.md
│   ├── deployment.md
│   └── contributing.md
└── troubleshooting/
    ├── common-issues.md
    └── faq.md
```

---

## Sonuç

İyi dokümantasyon ve şablonlar:

1. **Projeyi anlaşılır yapar**: Yeni katılımcılar hızlı başlar
2. **İşbirliğini kolaylaştırır**: Herkes aynı standartları takip eder
3. **Profesyonel görünüm**: İş dünyası ve akademide ciddiye alınır
4. **Sürdürülebilirlik**: Uzun vadede bakım kolaylaşır

Şablonları projenize uyarlayın, geliştirin ve güncel tutun!
