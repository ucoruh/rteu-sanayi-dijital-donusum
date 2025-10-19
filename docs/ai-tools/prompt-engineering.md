# Prompt Engineering

## Prompt Engineering Nedir?

Prompt Engineering, yapay zeka modellerinden en iyi sonucu almak için etkili talimatlar (prompt) yazma sanatıdır. Doğru prompt, AI'nın vereceği cevabın kalitesini ve kullanışlılığını doğrudan etkiler.

!!! info "Prompt Engineering"
    "Garbage in, garbage out" prensibi AI için de geçerlidir. Kaliteli prompt = Kaliteli sonuç.

## Neden Önemli?

### 1. Sonuç Kalitesini Artırır

**Kötü Prompt:**
```
Bir fonksiyon yaz
```

**İyi Prompt:**
```
Python'da, bir e-ticaret sitesi için sepetteki ürünlerin toplam fiyatını
hesaplayan bir fonksiyon yaz. Fonksiyon:
- Ürün listesi ve vergi oranını parametre olsun
- Her ürünün price ve quantity attributeları olsun
- Ara toplam, vergi ve genel toplam hesaplansın
- Type hints kullansın
- Error handling olsun
- Detaylı docstring içersin
- 2-3 unit test örneği ekle
```

**Sonuç Farkı:**

```python
# Kötü prompt sonucu:
def calculate(items):
    total = 0
    for item in items:
        total += item
    return total

# İyi prompt sonucu:
from typing import List, Dict
from decimal import Decimal

def calculate_cart_total(
    items: List[Dict[str, Decimal]],
    tax_rate: Decimal
) -> Dict[str, Decimal]:
    """
    Calculate total price for shopping cart including tax.

    Args:
        items: List of product dictionaries with 'price' and 'quantity' keys
        tax_rate: Tax rate as decimal (e.g., Decimal('0.18') for 18%)

    Returns:
        Dictionary containing:
        - subtotal: Total before tax
        - tax: Tax amount
        - total: Final total including tax

    Raises:
        ValueError: If items list is empty or tax_rate is negative
        KeyError: If product dict missing required keys
        TypeError: If price or quantity are not numeric

    Example:
        >>> items = [
        ...     {'price': Decimal('10.00'), 'quantity': 2},
        ...     {'price': Decimal('5.50'), 'quantity': 3}
        ... ]
        >>> result = calculate_cart_total(items, Decimal('0.18'))
        >>> print(result)
        {'subtotal': Decimal('36.50'), 'tax': Decimal('6.57'), 'total': Decimal('43.07')}
    """
    if not items:
        raise ValueError("Items list cannot be empty")

    if tax_rate < 0:
        raise ValueError("Tax rate cannot be negative")

    try:
        subtotal = sum(
            item['price'] * item['quantity']
            for item in items
        )
    except KeyError as e:
        raise KeyError(f"Product missing required key: {e}")
    except (TypeError, ValueError) as e:
        raise TypeError(f"Invalid price or quantity: {e}")

    tax = subtotal * tax_rate
    total = subtotal + tax

    return {
        'subtotal': subtotal,
        'tax': tax,
        'total': total
    }


# Unit Tests
import pytest

def test_calculate_cart_total_normal():
    """Test normal cart calculation."""
    items = [
        {'price': Decimal('10.00'), 'quantity': 2},
        {'price': Decimal('5.00'), 'quantity': 1}
    ]
    result = calculate_cart_total(items, Decimal('0.10'))

    assert result['subtotal'] == Decimal('25.00')
    assert result['tax'] == Decimal('2.50')
    assert result['total'] == Decimal('27.50')

def test_calculate_cart_total_empty_list():
    """Test that empty list raises ValueError."""
    with pytest.raises(ValueError, match="Items list cannot be empty"):
        calculate_cart_total([], Decimal('0.10'))

def test_calculate_cart_total_negative_tax():
    """Test that negative tax rate raises ValueError."""
    items = [{'price': Decimal('10.00'), 'quantity': 1}]
    with pytest.raises(ValueError, match="Tax rate cannot be negative"):
        calculate_cart_total(items, Decimal('-0.10'))
```

!!! success "Fark Açık"
    İyi prompt ile production-ready kod aldık: type hints, error handling, tests, documentation - hepsi dahil!

### 2. Zaman Tasarrufu

Detaylı prompt vererek iterasyon sayısını azaltırsınız.

```
Kötü prompt yolu:
1. "Bir API yaz" -> Temel kod gelir
2. "Error handling ekle" -> Güncelleme
3. "Authentication ekle" -> Güncelleme
4. "Validation ekle" -> Güncelleme
5. "Tests yaz" -> Güncelleme
Toplam: 5 iterasyon, 15-20 dakika

İyi prompt yolu:
1. "FastAPI ile user management API'si yaz. JWT auth, validation,
    error handling ve testlerle birlikte" -> Tam çözüm
Toplam: 1 iterasyon, 3-5 dakika
```

### 3. Tutarlılık

İyi prompt'lar tutarlı sonuçlar verir.

## Prompt Engineering Prensipleri

### 1. Spesifik ve Açık Olun

!!! tip "Prensip"
    Ne istediğinizi net ve detaylıca belirtin.

**Kötü:**
```
Bir web scraper yaz
```

**İyi:**
```
Python Selenium kullanarak Amazon ürün listelerini scrape eden bir script yaz:

Gereksinimler:
- URL listesi alacak (CSV'den)
- Her ürün için şunları çıkaracak:
  * Ürün adı
  * Fiyat
  * Rating (yıldız sayısı)
  * İnceleme sayısı
  * Stok durumu
- Sonuçları CSV'ye yazacak
- Rate limiting (her request arası 2-3 saniye bekleme)
- Error handling (sayfa yüklenmezse, element bulunamazsa)
- Progress bar gösterecek
- Logging ekleyecek
- Headless mode çalışacak
```

### 2. Context Verin

AI'ya yeterli bağlam sağlayın.

**Kötü:**
```
Bu kodu düzelt:
[kod]
```

**İyi:**
```
Bu kod bir e-ticaret sitesinin checkout fonksiyonu. Şu hatayı veriyor:
"TypeError: 'NoneType' object is not subscriptable at line 45"

Hata durumu:
- Sepet boş olduğunda oluşuyor
- Test: empty_cart_test başarısız

Kod:
[kod]

Hatayı bul ve düzelt. Ayrıca gelecekte benzer hataları önlemek için
defensive programming önerileri sun.
```

### 3. Format Belirtin

İstediğiniz çıktı formatını açıkça belirtin.

**Örnek:**
```
Python ile veri analizi scripti yaz.

Format:
1. Docstring ile başla
2. Type hints kullan
3. Main function + helper functions
4. argparse ile CLI arguments
5. if __name__ == "__main__" bloğu
6. Kod içinde açıklayıcı commentler
7. En sonda kullanım örnekleri

Stil:
- PEP 8 uyumlu
- Max 80 karakter satır uzunluğu
- Google style docstrings
```

### 4. Örnekler Verin

Beklentinizi örneklerle gösterin.

```
React component'i yaz. Şu stil standardına uymalı:

Örnek (mevcut projemizden):

interface ButtonProps {
  variant?: 'primary' | 'secondary' | 'outline';
  size?: 'sm' | 'md' | 'lg';
  onClick?: () => void;
  children: React.ReactNode;
}

export const Button: React.FC<ButtonProps> = ({
  variant = 'primary',
  size = 'md',
  onClick,
  children
}) => {
  // Component logic
  return <button>...</button>;
};

Bu stile uygun bir "Card" component'i oluştur.
```

### 5. Kısıtlamalar Belirtin

Neyin yapılmaması gerektiğini belirtin.

```
Node.js Express API oluştur.

Kısıtlamalar:
- External npm paketleri kullanma (sadece express, nodemon, dotenv)
- ES6 modules KULLANMA (CommonJS kullan)
- TypeScript kullanma (vanilla JavaScript)
- NoSQL veritabanı kullanma (PostgreSQL kullan)

Yapılması gerekenler:
- RESTful design
- Error handling middleware
- Input validation
- SQL injection koruması
```

### 6. Adım Adım İsteyin

Karmaşık görevleri parçalara ayırın.

```
Bir blog platformu oluşturmak istiyorum. İlk adım olarak:

1. PostgreSQL database schema tasarla
   - Users table
   - Posts table
   - Comments table
   - Relationships

Schema'yı göster. Onayladıktan sonra bir sonraki adıma geçelim.
```

## İyi Prompt Yazma Teknikleri

### Teknik 1: Role-Based Prompting

AI'ya bir rol verin.

```
Sen deneyimli bir Senior Backend Developer'sın. 10 yıllık Node.js
ve PostgreSQL deneyimin var. Security best practices konusunda uzmanlaşmışsın.

Bir kullanıcı authentication sistemi tasarla. Özellikle:
- Password security (hashing, salting)
- Session management
- Rate limiting
- SQL injection prevention
- XSS protection

Production-ready, enterprise-level kod yaz.
```

**Sonuç:** Daha olgun, security-aware kod alırsınız.

### Teknik 2: Chain of Thought

AI'dan düşünme sürecini göstermesini isteyin.

```
Şu algoritmayı optimize etmem gerekiyor:

[kod]

Adım adım:
1. Önce mevcut kodun time/space complexity'sini analiz et
2. Bottleneck'leri tespit et
3. Her bottleneck için optimizasyon seçenekleri sun
4. En iyi seçeneği belirle ve neden olduğunu açıkla
5. Optimize edilmiş kodu yaz
6. Benchmark karşılaştırması yap
```

### Teknik 3: Few-Shot Learning

Örneklerle öğretin.

```
Test case yazıyorum. Şu formatta olmalı:

Örnek 1:
test('should return sum of two numbers', () => {
  // Arrange
  const a = 5;
  const b = 3;

  // Act
  const result = add(a, b);

  // Assert
  expect(result).toBe(8);
});

Örnek 2:
test('should throw error for invalid input', () => {
  // Arrange
  const invalid = 'not a number';

  // Act & Assert
  expect(() => add(invalid, 5)).toThrow('Invalid input');
});

Bu formatı kullanarak "subtract" fonksiyonu için 5 test case yaz:
- Normal subtraction
- Negative numbers
- Zero
- Invalid input
- Floating point
```

### Teknik 4: Constraint-Based

Kısıtlamalarla şekillendirin.

```
Bir game leaderboard componenti yaz.

Kısıtlamalar:
- Performans: 10,000 entry olsa da smooth scroll
- Boyut: Component 300 satırdan fazla olmasın
- Dependencies: Sadece React, hiç external lib yok
- Browser support: IE11+ (polyfill kabul edilir)
- Accessibility: WCAG 2.1 Level AA uyumlu

Eğer bir kısıtı karşılayamayacaksan, neden olduğunu açıkla ve
alternatif öner.
```

### Teknik 5: Template-Based

Şablon kullanın.

```
Şu template'i kullanarak kod yaz:

"""
# Module: [Module Name]
# Purpose: [What this module does]
# Author: AI Assistant
# Date: [Current Date]

# Dependencies
[Import statements]

# Constants
[Global constants]

# Helper Functions
[Private helper functions with docstrings]

# Main Functions
[Public API functions with full documentation]

# Tests
[Unit tests using pytest]

# Usage Examples
[How to use this module]
"""

Template'i doldur: "Email validation and sending" modülü için.
```

## Pratik Örnekler

### Örnek 1: API Endpoint Geliştirme

**Etkili Prompt:**

```
FastAPI kullanarak bir "Create Blog Post" endpoint'i yaz.

Endpoint Spec:
- POST /api/posts
- Authentication: JWT Bearer token gerekli
- Request Body:
  {
    "title": string (3-200 char),
    "content": string (10-10000 char),
    "tags": string[] (max 5 tags),
    "published": boolean
  }
- Response: Created post object with ID and timestamps
- Status Codes:
  * 201: Created
  * 400: Validation error
  * 401: Unauthorized
  * 422: Unprocessable entity

Gereksinimler:
1. Pydantic model validation
2. SQL injection koruması (SQLAlchemy ORM)
3. XSS prevention (content sanitization)
4. Rate limiting (10 requests/minute)
5. Comprehensive error handling
6. OpenAPI documentation
7. Unit tests (pytest)

Ek:
- Async endpoint olmalı
- Database transaction kullan
- Logger ekle
- Input sanitization yap
```

**Alınan Sonuç:**

```python
from fastapi import FastAPI, Depends, HTTPException, status, Request
from fastapi.security import HTTPBearer, HTTPAuthorizationCredentials
from pydantic import BaseModel, Field, validator
from sqlalchemy.ext.asyncio import AsyncSession
from sqlalchemy import select, insert
from typing import List, Optional
from datetime import datetime
import logging
from html import escape
import re

# Configure logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

# Security
security = HTTPBearer()

# Rate limiting (simplified - use redis in production)
from collections import defaultdict
from time import time

rate_limit_storage = defaultdict(list)
RATE_LIMIT = 10  # requests
RATE_WINDOW = 60  # seconds

# Pydantic Models
class CreatePostRequest(BaseModel):
    title: str = Field(..., min_length=3, max_length=200)
    content: str = Field(..., min_length=10, max_length=10000)
    tags: List[str] = Field(default=[], max_items=5)
    published: bool = False

    @validator('title', 'content')
    def sanitize_text(cls, v):
        """Sanitize input to prevent XSS."""
        return escape(v.strip())

    @validator('tags')
    def validate_tags(cls, v):
        """Validate and sanitize tags."""
        if not v:
            return []

        # Remove duplicates, sanitize, limit length
        sanitized = []
        for tag in v:
            clean_tag = re.sub(r'[^a-zA-Z0-9-]', '', tag.lower())
            if clean_tag and len(clean_tag) <= 30:
                sanitized.append(clean_tag)

        return list(set(sanitized))[:5]

class PostResponse(BaseModel):
    id: int
    title: str
    content: str
    tags: List[str]
    published: bool
    author_id: int
    created_at: datetime
    updated_at: datetime

    class Config:
        from_attributes = True

# Dependencies
async def verify_token(
    credentials: HTTPAuthorizationCredentials = Depends(security)
) -> int:
    """Verify JWT token and return user ID."""
    token = credentials.credentials

    # JWT verification logic here (simplified)
    # In production, use python-jose or PyJWT
    try:
        # Decode JWT and extract user_id
        # This is a placeholder
        user_id = 1  # Replace with actual JWT decode
        return user_id
    except Exception as e:
        logger.error(f"Token verification failed: {e}")
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Invalid authentication credentials"
        )

async def check_rate_limit(request: Request):
    """Simple rate limiting check."""
    client_ip = request.client.host
    current_time = time()

    # Clean old entries
    rate_limit_storage[client_ip] = [
        req_time for req_time in rate_limit_storage[client_ip]
        if current_time - req_time < RATE_WINDOW
    ]

    # Check limit
    if len(rate_limit_storage[client_ip]) >= RATE_LIMIT:
        raise HTTPException(
            status_code=status.HTTP_429_TOO_MANY_REQUESTS,
            detail=f"Rate limit exceeded. Max {RATE_LIMIT} requests per {RATE_WINDOW} seconds."
        )

    # Add current request
    rate_limit_storage[client_ip].append(current_time)

# Endpoint
app = FastAPI()

@app.post(
    "/api/posts",
    response_model=PostResponse,
    status_code=status.HTTP_201_CREATED,
    summary="Create a new blog post",
    description="Create a new blog post with title, content, and tags. Requires authentication.",
    responses={
        201: {"description": "Post created successfully"},
        400: {"description": "Validation error"},
        401: {"description": "Unauthorized - invalid or missing token"},
        422: {"description": "Unprocessable entity - validation failed"},
        429: {"description": "Rate limit exceeded"}
    }
)
async def create_post(
    post_data: CreatePostRequest,
    request: Request,
    user_id: int = Depends(verify_token),
    _rate_limit: None = Depends(check_rate_limit),
    db: AsyncSession = Depends(get_db)
):
    """
    Create a new blog post.

    Args:
        post_data: Post creation data (title, content, tags, published status)
        user_id: Authenticated user ID from JWT token
        db: Database session

    Returns:
        Created post with ID and timestamps

    Raises:
        HTTPException: For various error conditions
    """
    try:
        logger.info(f"User {user_id} creating new post: {post_data.title}")

        # Create post object
        new_post = {
            "title": post_data.title,
            "content": post_data.content,
            "tags": post_data.tags,
            "published": post_data.published,
            "author_id": user_id,
            "created_at": datetime.utcnow(),
            "updated_at": datetime.utcnow()
        }

        # Insert into database
        result = await db.execute(
            insert(Post).values(**new_post).returning(Post)
        )
        await db.commit()

        created_post = result.scalar_one()

        logger.info(f"Post {created_post.id} created successfully")
        return created_post

    except Exception as e:
        await db.rollback()
        logger.error(f"Error creating post: {e}")
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail="Failed to create post"
        )


# Tests
import pytest
from httpx import AsyncClient

@pytest.mark.asyncio
async def test_create_post_success(async_client: AsyncClient, auth_headers):
    """Test successful post creation."""
    post_data = {
        "title": "Test Post",
        "content": "This is test content with more than 10 characters.",
        "tags": ["test", "example"],
        "published": True
    }

    response = await async_client.post(
        "/api/posts",
        json=post_data,
        headers=auth_headers
    )

    assert response.status_code == 201
    data = response.json()
    assert data["title"] == post_data["title"]
    assert data["content"] == post_data["content"]
    assert set(data["tags"]) == set(post_data["tags"])
    assert "id" in data
    assert "created_at" in data

@pytest.mark.asyncio
async def test_create_post_unauthorized(async_client: AsyncClient):
    """Test post creation without authentication."""
    post_data = {
        "title": "Test Post",
        "content": "This is test content.",
        "tags": [],
        "published": False
    }

    response = await async_client.post("/api/posts", json=post_data)
    assert response.status_code == 401

@pytest.mark.asyncio
async def test_create_post_validation_error(async_client: AsyncClient, auth_headers):
    """Test validation errors."""
    # Title too short
    post_data = {
        "title": "Ab",  # Less than 3 chars
        "content": "Valid content here.",
        "tags": [],
        "published": False
    }

    response = await async_client.post(
        "/api/posts",
        json=post_data,
        headers=auth_headers
    )
    assert response.status_code == 422

@pytest.mark.asyncio
async def test_create_post_rate_limit(async_client: AsyncClient, auth_headers):
    """Test rate limiting."""
    post_data = {
        "title": "Test Post",
        "content": "Valid content here.",
        "tags": [],
        "published": False
    }

    # Make requests up to limit
    for _ in range(10):
        await async_client.post("/api/posts", json=post_data, headers=auth_headers)

    # This should be rate limited
    response = await async_client.post(
        "/api/posts",
        json=post_data,
        headers=auth_headers
    )
    assert response.status_code == 429

@pytest.mark.asyncio
async def test_create_post_xss_prevention(async_client: AsyncClient, auth_headers):
    """Test XSS attack prevention."""
    post_data = {
        "title": "<script>alert('xss')</script>",
        "content": "Content with <img src=x onerror=alert('xss')>",
        "tags": ["<script>", "normal-tag"],
        "published": False
    }

    response = await async_client.post(
        "/api/posts",
        json=post_data,
        headers=auth_headers
    )

    assert response.status_code == 201
    data = response.json()

    # Verify HTML is escaped
    assert "<script>" not in data["title"]
    assert "&lt;script&gt;" in data["title"]
    assert "<img" not in data["content"]

    # Verify tags are sanitized
    assert "<script>" not in data["tags"]
    assert "normal-tag" in data["tags"]
```

!!! success "Mükemmel Sonuç"
    Detaylı prompt sayesinde production-ready kod aldık:
    - Input validation
    - Security (XSS, SQL injection prevention)
    - Rate limiting
    - Error handling
    - Logging
    - Comprehensive tests
    - Documentation

### Örnek 2: Debugging

**Etkili Prompt:**

```
Şu kodda bug var. Analiz et ve düzelt:

Kod:
```python
def get_user_orders(user_id):
    orders = db.query(Order).filter(Order.user_id == user_id).all()
    for order in orders:
        order.items = db.query(OrderItem).filter(OrderItem.order_id == order.id).all()
    return orders
```

Hata:
- Yavaş çalışıyor (100+ user olunca)
- Bazen "NoneType has no attribute 'id'" hatası veriyor
- Memory leak var gibi

Context:
- PostgreSQL database
- SQLAlchemy ORM
- Production'da 1000+ kullanıcı
- Her order'da ortalama 5 item

Yapılması gerekenler:
1. Bug'ları tespit et ve açıkla
2. Düzeltilmiş kodu yaz
3. Performance optimization yap
4. Test case'ler ekle
5. Alternatif çözümler öner
```

**AI Analizi ve Çözümü:**

```python
"""
BUG ANALİZİ:
============

1. N+1 Query Problem:
   - Her order için ayrı query (orders çoksa çok yavaş)
   - 100 order = 101 query (1 order query + 100 item query)

2. NoneType Error:
   - order.id None olabilir (soft delete veya data corruption)
   - Error handling yok

3. Memory Leak:
   - Tüm data memory'ye yükleniyor
   - Large dataset'lerde problem

ÇÖZÜM:
======
"""

from sqlalchemy.orm import joinedload
from typing import List, Optional
import logging

logger = logging.getLogger(__name__)

# ÇÖZÜM 1: Eager Loading (En İyi)
def get_user_orders_optimized(user_id: int) -> List[Order]:
    """
    Get all orders for a user with items (optimized).

    Uses eager loading to prevent N+1 query problem.
    Single query with JOIN instead of multiple queries.

    Args:
        user_id: User ID to fetch orders for

    Returns:
        List of Order objects with items loaded

    Raises:
        ValueError: If user_id is invalid
    """
    if not user_id or user_id <= 0:
        raise ValueError("Invalid user_id")

    try:
        # Single query with JOIN - no N+1 problem
        orders = (
            db.query(Order)
            .options(joinedload(Order.items))  # Eager load items
            .filter(Order.user_id == user_id)
            .filter(Order.id.isnot(None))  # Prevent NoneType
            .all()
        )

        logger.info(f"Fetched {len(orders)} orders for user {user_id}")
        return orders

    except Exception as e:
        logger.error(f"Error fetching orders for user {user_id}: {e}")
        raise

# ÇÖZÜM 2: Pagination (Büyük Veri için)
def get_user_orders_paginated(
    user_id: int,
    page: int = 1,
    per_page: int = 20
) -> dict:
    """
    Get user orders with pagination to prevent memory issues.

    Args:
        user_id: User ID
        page: Page number (1-indexed)
        per_page: Items per page

    Returns:
        Dict with orders, total count, and pagination info
    """
    if not user_id or user_id <= 0:
        raise ValueError("Invalid user_id")

    if page < 1:
        page = 1

    offset = (page - 1) * per_page

    try:
        # Count total
        total = (
            db.query(Order)
            .filter(Order.user_id == user_id)
            .filter(Order.id.isnot(None))
            .count()
        )

        # Fetch page
        orders = (
            db.query(Order)
            .options(joinedload(Order.items))
            .filter(Order.user_id == user_id)
            .filter(Order.id.isnot(None))
            .offset(offset)
            .limit(per_page)
            .all()
        )

        return {
            'orders': orders,
            'total': total,
            'page': page,
            'per_page': per_page,
            'total_pages': (total + per_page - 1) // per_page
        }

    except Exception as e:
        logger.error(f"Error fetching paginated orders: {e}")
        raise

# ÇÖZÜM 3: Async (High Performance için)
from sqlalchemy.ext.asyncio import AsyncSession
from sqlalchemy import select

async def get_user_orders_async(
    user_id: int,
    db: AsyncSession
) -> List[Order]:
    """
    Async version for high-performance applications.

    Args:
        user_id: User ID
        db: Async database session

    Returns:
        List of orders with items
    """
    if not user_id or user_id <= 0:
        raise ValueError("Invalid user_id")

    try:
        result = await db.execute(
            select(Order)
            .options(joinedload(Order.items))
            .where(Order.user_id == user_id)
            .where(Order.id.isnot(None))
        )

        orders = result.unique().scalars().all()
        return orders

    except Exception as e:
        logger.error(f"Error in async order fetch: {e}")
        raise


# PERFORMANCE COMPARISON
"""
Benchmark Results (1000 users, 10 orders each, 5 items per order):

Original:
- Queries: 10,001 (1 + 10,000)
- Time: ~45 seconds
- Memory: ~500MB

Optimized (Eager Loading):
- Queries: 1
- Time: ~0.8 seconds
- Memory: ~50MB

Improvement: 56x faster, 10x less memory
"""

# TESTS
import pytest
from unittest.mock import Mock, patch

def test_get_user_orders_optimized_success():
    """Test successful order retrieval."""
    user_id = 123
    mock_orders = [Mock(id=1), Mock(id=2)]

    with patch('db.query') as mock_query:
        mock_query.return_value.options.return_value.filter.return_value.filter.return_value.all.return_value = mock_orders

        result = get_user_orders_optimized(user_id)

        assert result == mock_orders
        assert len(result) == 2

def test_get_user_orders_invalid_user_id():
    """Test invalid user ID handling."""
    with pytest.raises(ValueError, match="Invalid user_id"):
        get_user_orders_optimized(0)

    with pytest.raises(ValueError, match="Invalid user_id"):
        get_user_orders_optimized(-5)

def test_get_user_orders_paginated():
    """Test pagination logic."""
    result = get_user_orders_paginated(user_id=123, page=2, per_page=10)

    assert 'orders' in result
    assert 'total' in result
    assert 'page' in result
    assert result['page'] == 2
    assert result['per_page'] == 10

@pytest.mark.asyncio
async def test_get_user_orders_async(async_db_session):
    """Test async version."""
    user_id = 123
    result = await get_user_orders_async(user_id, async_db_session)

    assert isinstance(result, list)


# ALTERNATİF ÇÖZÜMLER
"""
1. Caching:
   - Redis cache ekle
   - Cache TTL: 5 minutes
   - Cache invalidation on order update

2. Database Indexing:
   - CREATE INDEX idx_orders_user_id ON orders(user_id);
   - CREATE INDEX idx_order_items_order_id ON order_items(order_id);

3. GraphQL:
   - N+1 problem'i otomatik çözülür (DataLoader)
   - Client istediği field'ları seçer

4. Denormalization:
   - Order table'a item_count kolonu ekle
   - İhtiyaç durumunda JOIN yapma
"""
```

!!! success "Kapsamlı Çözüm"
    Detaylı prompt ile:
    - Bug analizi
    - Multiple solutions
    - Performance comparison
    - Tests
    - Alternative approaches

## Best Practices

### 1. Iterative Refinement

İlk prompt mükemmel olmayabilir. İyileştirin.

```
İlk Prompt:
"React form component yaz"

AI Response: [Basit form]

İkinci Prompt:
"Form validation ekle (email, password strength)"

AI Response: [Validation eklendi]

Üçüncü Prompt:
"Error messages göster ve accessibility iyileştir"

AI Response: [ARIA labels, error display eklendi]

Dördüncü Prompt:
"Loading state ve submit handling ekle"

AI Response: [Complete component]
```

### 2. Verification

AI çıktısını her zaman doğrulayın.

```
Prompt:
"Şu kodu yaz ve ardından:
1. Kendi yazdığın kodu review et
2. Potansiyel hataları listele
3. Test case'leri öner
4. Security concern'leri belirt"
```

### 3. Learn from Examples

AI'nın iyi örneklerini kaydedin, prompt library oluşturun.

```markdown
# My Prompt Library

## API Development
- [FastAPI CRUD] -> Proven prompt for CRUD APIs
- [GraphQL Resolver] -> GraphQL endpoint pattern
- [Authentication] -> JWT auth implementation

## Frontend
- [React Hook] -> Custom hook template
- [Form Validation] -> Form handling pattern
- [State Management] -> Context/Redux setup

## Testing
- [Unit Test] -> Jest/Pytest pattern
- [Integration Test] -> API testing template
- [E2E Test] -> Cypress scenario
```

### 4. Version Control

Başarılı prompt'ları versiyonlayın.

```
# prompt-templates/api-endpoint-v2.md

## Changes from v1:
- Added security requirements
- Included rate limiting
- Added monitoring/logging
- Specified error codes

## Template:
...
```

## Yaygın Hatalar

### Hata 1: Belirsiz Talimatlar

```
❌ "Bir API yaz"
✅ "FastAPI ile user registration endpoint'i yaz. Email validation,
    password hashing (bcrypt), duplicate check, error handling içermeli."
```

### Hata 2: Context Eksikliği

```
❌ "Bu kodu optimize et: [kod]"
✅ "Bu kod production'da 1000+ concurrent user'la çalışıyor ve yavaş.
    Profiling gösterdi ki database query bottleneck. PostgreSQL kullanıyoruz.
    Bu kodu optimize et: [kod]"
```

### Hata 3: Format Belirtmeme

```
❌ "Test yaz"
✅ "Pytest kullanarak test yaz. Arrange-Act-Assert pattern'i kullan.
    Fixtures kullan. Parametrize et. Coverage %80+ olmalı."
```

### Hata 4: Tek Seferde Çok Şey İstemek

```
❌ "Tam bir e-ticaret sitesi oluştur: frontend, backend, database,
    deployment, monitoring, hepsi"

✅ "E-ticaret için önce database schema tasarla. User, Product,
    Order, OrderItem table'ları. Relationships göster.
    Onayladıktan sonra backend API'sine geçeriz."
```

## Sonuç

!!! tip "Prompt Engineering Özet"
    **İyi Prompt = İyi Sonuç**

    Temel prensipler:
    1. Spesifik ve açık olun
    2. Context verin
    3. Format belirtin
    4. Örnekler gösterin
    5. Kısıtlamaları belirtin
    6. Iterative olarak iyileştirin

    Pratik yaparak mükemmelleşir. Her başarılı prompt'u kaydedin
    ve kütüphane oluşturun.

!!! warning "Unutmayın"
    En iyi prompt bile, AI'nın kör kullanımını haklı çıkarmaz.
    Her zaman:
    - Kodu okuyun ve anlayın
    - Test edin
    - Security review yapın
    - Best practice'lere uygunluğunu kontrol edin

    AI bir araçtır, düşünme yetenğinizin yerine geçmez.
