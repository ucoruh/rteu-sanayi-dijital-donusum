# Diğer AI Araçları

## GitHub Copilot

### GitHub Copilot Nedir?

GitHub Copilot, Microsoft ve OpenAI işbirliğiyle geliştirilen bir AI pair programming aracıdır. IDE içerisinde gerçek zamanlı kod önerileri sunar.

!!! info "GitHub Copilot"
    Copilot, yazdığınız koda bakarak sonraki satırları tahmin eder ve tam fonksiyonlar önerir. Milyarlarca satır açık kaynak kodla eğitilmiştir.

### Temel Özellikler

#### 1. Gerçek Zamanlı Kod Tamamlama

Copilot, IDE içerisinde yazarken otomatik öneriler sunar.

```python
# Siz yazarken:
def calculate_fibonacci(n):
    # Copilot otomatik tamamlar:

# Copilot önerisi:
def calculate_fibonacci(n):
    """Calculate fibonacci number at position n."""
    if n <= 0:
        return 0
    elif n == 1:
        return 1
    else:
        return calculate_fibonacci(n-1) + calculate_fibonacci(n-2)
```

#### 2. Comment-to-Code

Yorum satırı yazarak kod üretebilirsiniz.

```javascript
// Kullanıcının emailini validate eden bir fonksiyon yaz
// Copilot önerisi:
function validateEmail(email) {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}

// Email gönderen fonksiyon, retry logic ile
// Copilot önerisi:
async function sendEmailWithRetry(to, subject, body, maxRetries = 3) {
    for (let i = 0; i < maxRetries; i++) {
        try {
            await sendEmail(to, subject, body);
            console.log('Email sent successfully');
            return true;
        } catch (error) {
            console.error(`Attempt ${i + 1} failed:`, error);
            if (i === maxRetries - 1) {
                throw new Error('Failed to send email after max retries');
            }
            await new Promise(resolve => setTimeout(resolve, 1000 * Math.pow(2, i)));
        }
    }
}
```

#### 3. Test Kodu Üretimi

```python
# Üretim kodu
class BankAccount:
    def __init__(self, balance=0):
        self.balance = balance

    def deposit(self, amount):
        if amount <= 0:
            raise ValueError("Amount must be positive")
        self.balance += amount

    def withdraw(self, amount):
        if amount <= 0:
            raise ValueError("Amount must be positive")
        if amount > self.balance:
            raise ValueError("Insufficient funds")
        self.balance -= amount

# Test kodu yaz
# Copilot önerisi:
import pytest

def test_bank_account_initial_balance():
    account = BankAccount()
    assert account.balance == 0

def test_bank_account_deposit():
    account = BankAccount(100)
    account.deposit(50)
    assert account.balance == 150

def test_bank_account_deposit_negative_amount():
    account = BankAccount(100)
    with pytest.raises(ValueError):
        account.deposit(-50)

def test_bank_account_withdraw():
    account = BankAccount(100)
    account.withdraw(30)
    assert account.balance == 70

def test_bank_account_withdraw_insufficient_funds():
    account = BankAccount(100)
    with pytest.raises(ValueError):
        account.withdraw(150)
```

### GitHub Copilot Avantajları

!!! success "Avantajlar"
    - IDE entegrasyonu (VS Code, JetBrains, Neovim)
    - Gerçek zamanlı öneriler
    - Context-aware kod tamamlama
    - Çoklu dil desteği (40+ dil)
    - GitHub ile sıkı entegrasyon

### GitHub Copilot Kullanım Örnekleri

#### Örnek 1: API Client Oluşturma

```typescript
// GitHub API için TypeScript client oluştur
// Copilot tüm class'ı önerir:

import axios, { AxiosInstance, AxiosRequestConfig } from 'axios';

interface GitHubRepo {
    id: number;
    name: string;
    full_name: string;
    description: string;
    stargazers_count: number;
    forks_count: number;
}

interface GitHubUser {
    login: string;
    id: number;
    avatar_url: string;
    name: string;
    email: string;
    bio: string;
}

class GitHubClient {
    private client: AxiosInstance;
    private token?: string;

    constructor(token?: string) {
        this.token = token;
        this.client = axios.create({
            baseURL: 'https://api.github.com',
            headers: {
                'Accept': 'application/vnd.github.v3+json',
                ...(token && { 'Authorization': `token ${token}` })
            }
        });
    }

    async getUser(username: string): Promise<GitHubUser> {
        const response = await this.client.get(`/users/${username}`);
        return response.data;
    }

    async getUserRepos(username: string): Promise<GitHubRepo[]> {
        const response = await this.client.get(`/users/${username}/repos`);
        return response.data;
    }

    async searchRepositories(query: string, page = 1, perPage = 30): Promise<GitHubRepo[]> {
        const response = await this.client.get('/search/repositories', {
            params: { q: query, page, per_page: perPage }
        });
        return response.data.items;
    }

    async getRepository(owner: string, repo: string): Promise<GitHubRepo> {
        const response = await this.client.get(`/repos/${owner}/${repo}`);
        return response.data;
    }
}

export default GitHubClient;
```

#### Örnek 2: Regex Patterns

```python
# Email validation regex
# Copilot:
import re

EMAIL_REGEX = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'

def is_valid_email(email: str) -> bool:
    return re.match(EMAIL_REGEX, email) is not None

# Phone number validation (US format)
# Copilot:
PHONE_REGEX = r'^\+?1?\s*\(?([0-9]{3})\)?[-.\s]?([0-9]{3})[-.\s]?([0-9]{4})$'

def is_valid_phone(phone: str) -> bool:
    return re.match(PHONE_REGEX, phone) is not None

# URL validation
# Copilot:
URL_REGEX = r'^https?://(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b(?:[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)$'

def is_valid_url(url: str) -> bool:
    return re.match(URL_REGEX, url) is not None
```

### Fiyatlandırma

- **Bireysel:** $10/ay
- **Öğrenci:** Ücretsiz (GitHub Education ile)
- **İşletme:** $19/kullanıcı/ay

---

## Cursor

### Cursor Nedir?

Cursor, AI-first kod editörüdür. VS Code fork'u olup, derin AI entegrasyonu ile geliştirilmiştir.

!!! info "Cursor"
    Cursor, AI'ı sadece bir eklenti değil, editörün temel bir parçası olarak tasarlar. GPT-4, Claude ve diğer modelleri destekler.

### Temel Özellikler

#### 1. CMD+K: AI Düzenleme

Kodu seçip CMD+K ile AI'dan düzenleme isteyebilirsiniz.

```python
# Mevcut kod
def process_data(data):
    result = []
    for item in data:
        if item > 0:
            result.append(item * 2)
    return result

# CMD+K: "Add type hints, error handling, and docstring"
# Cursor çıktısı:
from typing import List, Union

def process_data(data: List[Union[int, float]]) -> List[Union[int, float]]:
    """
    Process numeric data by filtering positive values and doubling them.

    Args:
        data: List of numeric values to process

    Returns:
        List of doubled positive values

    Raises:
        TypeError: If data is not a list or contains non-numeric values

    Example:
        >>> process_data([1, -2, 3, -4, 5])
        [2, 6, 10]
    """
    if not isinstance(data, list):
        raise TypeError("Input must be a list")

    try:
        return [item * 2 for item in data if item > 0]
    except TypeError as e:
        raise TypeError(f"All elements must be numeric: {e}")
```

#### 2. CMD+L: AI Chat

Editor içinde AI ile sohbet edebilirsiniz.

```
Kullanıcı: "Bu fonksiyonun performansını nasıl iyileştirebilirim?"
[Kodu seçer]

Cursor AI: "Bu fonksiyonda birkaç optimizasyon fırsatı var:

1. List comprehension kullanılmış, bu iyi.
2. Ancak filter + map pattern'i daha efektif olabilir.
3. NumPy kullanırsanız büyük datada 10-100x hızlanma.

İşte üç farklı implementasyon:

[Optimize edilmiş versiyonlar]

Hangisi size uygun?"
```

#### 3. Codebase-wide Understanding

Cursor, tüm proje dosyalarınızı anlayabilir.

```
Kullanıcı: "User authentication nasıl çalışıyor?"

Cursor AI: "Projenizde authentication şöyle çalışıyor:

1. auth.ts: JWT token oluşturma
2. middleware.ts: Token validation
3. routes/auth.ts: Login/Register endpoints
4. models/User.ts: User model

Akış:
Login -> JWT oluşturulur -> Token'ı her request'te header'da gönder
-> Middleware validate eder -> Protected route'a erişim

Detaylı kod örnekleri:
[İlgili kod parçalarını gösterir]"
```

#### 4. Multi-file Editing

Birden fazla dosyayı aynı anda düzenleyebilirsiniz.

```
Kullanıcı: "User model'e 'role' field ekle ve tüm ilgili dosyaları güncelle"

Cursor AI:
✓ models/User.ts güncellendi (role field eklendi)
✓ migrations/add_role.ts oluşturuldu
✓ schemas/user.schema.ts güncellendi
✓ services/user.service.ts güncellendi (role validation)
✓ types/user.types.ts güncellendi
✓ tests/user.test.ts güncellendi (yeni test case'ler)

6 dosya değiştirildi, 45 satır eklendi.
```

### Cursor Avantajları

!!! success "Avantajlar"
    - Çoklu AI model desteği (GPT-4, Claude, vb.)
    - Tüm projeyi anlar (codebase awareness)
    - Multi-file editing
    - Privacy-focused (local model seçeneği)
    - VS Code extension'ları ile uyumlu

### Cursor Kullanım Örnekleri

#### Örnek 1: Refactoring

```typescript
// Eski kod (Legacy)
function getUserData(id) {
    return fetch('/api/users/' + id)
        .then(function(response) {
            return response.json();
        })
        .then(function(data) {
            var user = data;
            var posts = fetch('/api/posts?userId=' + user.id)
                .then(function(response) {
                    return response.json();
                });
            return posts.then(function(p) {
                user.posts = p;
                return user;
            });
        });
}

// CMD+K: "Modernize this code: TypeScript, async/await, error handling"
// Cursor çıktısı:
interface User {
    id: number;
    name: string;
    email: string;
    posts?: Post[];
}

interface Post {
    id: number;
    userId: number;
    title: string;
    content: string;
}

async function getUserData(id: number): Promise<User> {
    try {
        // Fetch user data
        const userResponse = await fetch(`/api/users/${id}`);
        if (!userResponse.ok) {
            throw new Error(`Failed to fetch user: ${userResponse.statusText}`);
        }
        const user: User = await userResponse.json();

        // Fetch user's posts
        const postsResponse = await fetch(`/api/posts?userId=${user.id}`);
        if (!postsResponse.ok) {
            throw new Error(`Failed to fetch posts: ${postsResponse.statusText}`);
        }
        const posts: Post[] = await postsResponse.json();

        // Combine data
        user.posts = posts;
        return user;

    } catch (error) {
        console.error('Error fetching user data:', error);
        throw error;
    }
}
```

#### Örnek 2: Bug Fix

```javascript
// Bug'lı kod
function calculateDiscount(price, discountPercent) {
    return price - (price * discountPercent);
}

// Cursor'a sorun: "Bu fonksiyonda bug var, %20 indirim %80 azalma veriyor"
// Cursor analizi ve düzeltmesi:

/**
 * Calculate discounted price.
 * Bug fix: discount percent should be divided by 100
 *
 * @param {number} price - Original price
 * @param {number} discountPercent - Discount percentage (e.g., 20 for 20%)
 * @returns {number} Price after discount
 */
function calculateDiscount(price, discountPercent) {
    if (price < 0 || discountPercent < 0 || discountPercent > 100) {
        throw new Error('Invalid input: price must be positive, discount must be 0-100');
    }
    return price - (price * (discountPercent / 100));
}

// Tests
console.log(calculateDiscount(100, 20)); // 80 (correct)
console.log(calculateDiscount(50, 10));  // 45 (correct)
```

### Fiyatlandırma

- **Hobby:** Ücretsiz (sınırlı)
- **Pro:** $20/ay (unlimited GPT-4, Claude)
- **Business:** $40/kullanıcı/ay

---

## V0.dev (Vercel)

### V0.dev Nedir?

V0.dev, Vercel tarafından geliştirilen AI-powered UI generation aracıdır. Text veya görsel prompt'lardan React component'leri üretir.

!!! info "V0.dev"
    V0.dev, özellikle frontend geliştirme için optimize edilmiştir. Tailwind CSS ve shadcn/ui kullanarak modern UI bileşenleri üretir.

### Temel Özellikler

#### 1. Text-to-UI

Metin açıklamasından UI bileşeni oluşturur.

**Prompt:**
```
Create a modern pricing table with three tiers:
- Free: $0/month
- Pro: $29/month
- Enterprise: Custom pricing

Include features list, popular badge for Pro tier,
and a call-to-action button for each.
```

**V0 Çıktısı:**

```tsx
import { Check } from "lucide-react"
import { Button } from "@/components/ui/button"
import { Card, CardContent, CardDescription, CardFooter, CardHeader, CardTitle } from "@/components/ui/card"

export default function PricingTable() {
  const tiers = [
    {
      name: "Free",
      price: "$0",
      description: "Perfect for trying out our service",
      features: [
        "Up to 3 projects",
        "Basic analytics",
        "24/7 community support",
        "1 GB storage",
      ],
      cta: "Get Started",
      popular: false,
    },
    {
      name: "Pro",
      price: "$29",
      description: "Best for professional developers",
      features: [
        "Unlimited projects",
        "Advanced analytics",
        "Priority support",
        "50 GB storage",
        "Custom domain",
        "Team collaboration",
      ],
      cta: "Start Free Trial",
      popular: true,
    },
    {
      name: "Enterprise",
      price: "Custom",
      description: "For large-scale applications",
      features: [
        "Everything in Pro",
        "Dedicated support",
        "Unlimited storage",
        "SLA guarantee",
        "Advanced security",
        "Custom integrations",
      ],
      cta: "Contact Sales",
      popular: false,
    },
  ]

  return (
    <div className="container mx-auto px-4 py-16">
      <div className="text-center mb-12">
        <h2 className="text-4xl font-bold mb-4">Choose Your Plan</h2>
        <p className="text-xl text-muted-foreground">
          Select the perfect plan for your needs
        </p>
      </div>

      <div className="grid md:grid-cols-3 gap-8">
        {tiers.map((tier) => (
          <Card
            key={tier.name}
            className={`relative ${
              tier.popular ? "border-primary shadow-lg scale-105" : ""
            }`}
          >
            {tier.popular && (
              <div className="absolute -top-4 left-1/2 -translate-x-1/2">
                <span className="bg-primary text-primary-foreground px-4 py-1 rounded-full text-sm font-semibold">
                  Popular
                </span>
              </div>
            )}

            <CardHeader>
              <CardTitle className="text-2xl">{tier.name}</CardTitle>
              <CardDescription>{tier.description}</CardDescription>
              <div className="mt-4">
                <span className="text-4xl font-bold">{tier.price}</span>
                {tier.price !== "Custom" && (
                  <span className="text-muted-foreground">/month</span>
                )}
              </div>
            </CardHeader>

            <CardContent>
              <ul className="space-y-3">
                {tier.features.map((feature) => (
                  <li key={feature} className="flex items-center">
                    <Check className="h-5 w-5 text-primary mr-2 flex-shrink-0" />
                    <span>{feature}</span>
                  </li>
                ))}
              </ul>
            </CardContent>

            <CardFooter>
              <Button
                className="w-full"
                variant={tier.popular ? "default" : "outline"}
              >
                {tier.cta}
              </Button>
            </CardFooter>
          </Card>
        ))}
      </div>
    </div>
  )
}
```

!!! success "Özellikler"
    - Responsive design
    - Modern UI components (shadcn/ui)
    - Tailwind CSS styling
    - Accessibility best practices
    - TypeScript support

#### 2. Image-to-UI

Bir tasarım görselinden kod üretir.

**Kullanım:**
1. Figma/Sketch tasarımını screenshot alın
2. V0'a yükleyin
3. "Bu tasarımı React component olarak oluştur"
4. V0 pixel-perfect kod üretir

#### 3. İteratif Geliştirme

Üretilen kodu chat ile iyileştirebilirsiniz.

```
V0: [Dashboard component oluşturur]

Kullanıcı: "Grafikleri daha büyük yap ve dark mode ekle"

V0: [Güncellenmiş version]

Kullanıcı: "Sidebar collapse edilebilir olsun"

V0: [Final version with sidebar toggle]
```

### V0.dev Kullanım Örnekleri

#### Örnek 1: Dashboard Component

**Prompt:**
```
Create a modern dashboard with:
- Sidebar navigation
- Top stats cards (4 metrics)
- Line chart for revenue
- Recent activity list
- Dark mode support
```

**V0 üretir:**
- Tam responsive dashboard
- Chart.js entegrasyonu
- Dark mode toggle
- Animated transitions
- Clean, modern design

#### Örnek 2: Form Component

**Prompt:**
```
Multi-step registration form:
1. Personal info (name, email)
2. Address details
3. Payment method
4. Review and submit

With validation, progress bar, and back/next buttons
```

**V0 üretir:**
- State management
- Form validation (Zod)
- Progress indicator
- Error handling
- Success animation

### V0.dev Avantajları

!!! success "Avantajlar"
    - Çok hızlı UI prototyping
    - Production-ready kod
    - Modern tech stack (React, Tailwind, TypeScript)
    - Responsive ve accessible
    - İteratif development

!!! warning "Dikkat"
    - Sadece frontend/UI için
    - Backend logic üretmez
    - Vercel ekosistemi ile sıkı bağlantılı

### Fiyatlandırma

- **Free:** 30 credits/ay
- **Premium:** $20/ay (unlimited)

---

## Diğer Önemli Araçlar

### 1. Tabnine

**Özellikler:**
- AI kod tamamlama
- Local/cloud model seçenekleri
- Privacy-focused
- Team learning

**Kullanım:**
```python
# Tabnine suggestions
def calculate_<TAB>
# Öneri: calculate_total_price
# Öneri: calculate_tax
# Öneri: calculate_discount
```

**Fiyat:** $12/ay (Pro)

---

### 2. Codeium

**Özellikler:**
- Ücretsiz AI code completion
- 70+ dil desteği
- Context-aware
- Fast suggestions

**Avantaj:** Tamamen ücretsiz

---

### 3. Amazon CodeWhisperer

**Özellikler:**
- AWS entegrasyonu
- Security scanning
- Reference tracking
- Multi-language

**Fiyat:** Bireysel kullanım ücretsiz

---

### 4. Replit Ghostwriter

**Özellikler:**
- Replit IDE entegrasyonu
- Explain code
- Generate code
- Transform code

**Kullanım:**
```python
# Ghostwriter comment-to-code
# Create a function to validate credit card numbers using Luhn algorithm
```

**Fiyat:** $10/ay (Replit Core dahil)

---

### 5. Sourcegraph Cody

**Özellikler:**
- Codebase-aware AI
- Multiple LLM support
- Enterprise-ready
- Code search integration

**Kullanım:**
```
"Nerede user authentication logic'i var?"
-> Cody ilgili dosyaları ve kod bloklarını gösterir
```

**Fiyat:** Free tier mevcut, Pro $9/ay

---

### 6. Pieces for Developers

**Özellikler:**
- Code snippet management
- AI-powered search
- Automatic tagging
- Workflow capture

**Kullanım:**
- Kod parçalarını kaydet
- AI ile organize et
- Hızlıca bul ve kullan

**Fiyat:** Ücretsiz

---

### 7. Phind

**Özellikler:**
- Developer-focused search
- AI answers with code
- Real-time web search
- Technical accuracy

**Kullanım:**
```
Search: "How to implement JWT authentication in FastAPI"
-> Phind: Güncel kod örnekleri, best practices, security notes
```

**Fiyat:** Ücretsiz, Plus $15/ay

---

## Araç Karşılaştırması

| Araç | Güçlü Yönü | Fiyat | Kullanım |
|------|------------|-------|----------|
| **GitHub Copilot** | IDE entegrasyonu | $10/ay | Genel kod yazma |
| **Cursor** | Codebase awareness | $20/ay | Büyük projeler |
| **V0.dev** | UI generation | $20/ay | Frontend/UI |
| **Tabnine** | Privacy-focused | $12/ay | Enterprise |
| **Codeium** | Ücretsiz | Free | Budget-conscious |
| **CodeWhisperer** | AWS integration | Free | AWS developers |
| **Replit Ghostwriter** | Cloud IDE | $10/ay | Learning/prototyping |
| **Cody** | Code search | $9/ay | Large codebases |
| **Phind** | Technical search | Free | Research |

## Kullanım Önerileri

### Başlangıç Seviyesi

!!! tip "Önerilen Araçlar"
    1. **Codeium** (ücretsiz, kolay başlangıç)
    2. **Phind** (öğrenme için)
    3. **V0.dev** (UI öğrenme)

### Orta Seviye

!!! tip "Önerilen Araçlar"
    1. **GitHub Copilot** (en yaygın)
    2. **ChatGPT/Claude** (problem çözme)
    3. **Cursor** (büyük projeler)

### İleri Seviye

!!! tip "Önerilen Araçlar"
    1. **Cursor** (codebase refactoring)
    2. **Sourcegraph Cody** (enterprise)
    3. **Claude Code** (CLI workflow)
    4. **Gemini** (large context analysis)

### Şirkete Özel

!!! tip "Enterprise Öneriler"
    1. **GitHub Copilot Enterprise**
    2. **Tabnine** (privacy)
    3. **Sourcegraph Cody** (code intelligence)
    4. **AWS CodeWhisperer** (AWS heavy)

## Sonuç

Modern yazılım geliştirmede AI araçları artık vazgeçilmez. Her araç farklı kullanım senaryoları için optimize edilmiş:

- **Kod yazma:** GitHub Copilot, Cursor, Codeium
- **UI geliştirme:** V0.dev
- **Öğrenme:** ChatGPT, Claude, Phind
- **Enterprise:** Tabnine, Sourcegraph Cody
- **AWS:** CodeWhisperer
- **Budget:** Codeium, Phind (ücretsiz)

!!! success "En İyi Strateji"
    Birden fazla aracı kombine kullanın. Her birinin güçlü yönlerinden faydalanın:

    - IDE'de: GitHub Copilot veya Cursor
    - Problem çözme: ChatGPT/Claude
    - UI: V0.dev
    - Research: Phind

    Bu yaklaşımla maksimum verimlilik sağlanır.

!!! warning "Önemli Hatırlatma"
    AI araçları ne kadar gelişmiş olursa olsun, temel programlama bilgisi ve problem çözme yeteneklerinizin yerini tutamaz. AI'ı asistan olarak kullanın, köle olarak değil.
