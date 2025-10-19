# Pratik Örnekler

Bu doküman, workshop sırasında gösterilecek pratik örnekleri içermektedir. Her örnek, AI araçları kullanılarak nasıl geliştirileceğini adım adım göstermektedir.

## İçindekiler

1. [Basit TODO Uygulaması](#basit-todo-uygulaması)
2. [REST API Oluşturma](#rest-api-oluşturma)
3. [Kod Review Örneği](#kod-review-örneği)
4. [Bug Fixing Örneği](#bug-fixing-örneği)
5. [Veritabanı İşlemleri](#veritabanı-işlemleri)
6. [Test Yazma](#test-yazma)

---

## Basit TODO Uygulaması

AI ile sıfırdan bir TODO uygulaması oluşturacağız. Bu örnek, frontend geliştirme temellerini ve AI asistanı kullanımını gösterir.

### Hedefler

- HTML, CSS ve JavaScript kullanarak bir TODO listesi oluşturmak
- Yerel depolama (localStorage) kullanmak
- Modern ve kullanıcı dostu bir arayüz tasarlamak
- AI ile adım adım geliştirme yapmak

### Adım 1: Proje Yapısını Oluşturma

#### AI'ya Sorabileceğiniz Prompt (Claude veya ChatGPT)

```
Basit bir TODO uygulaması için proje klasör yapısı oluştur.
HTML, CSS ve JavaScript dosyaları ayrı olsun.
Modern bir tasarım istiyorum.
```

#### Beklenen Klasör Yapısı

```
todo-app/
│
├── index.html
├── css/
│   └── style.css
└── js/
    └── app.js
```

#### Dosyaları Oluşturma (Terminal)

```bash
mkdir todo-app
cd todo-app
mkdir css js
touch index.html css/style.css js/app.js
```

### Adım 2: HTML Yapısını Oluşturma

#### AI Prompt

```
Bir TODO uygulaması için modern HTML5 yapısı oluştur.
Şunlar olsun:
- Başlık
- Yeni görev ekleme formu (input + buton)
- Görev listesi
- Tamamlanan görevleri gösterme/gizleme butonu
- Tüm görevleri temizleme butonu
Bootstrap veya başka bir framework kullanma, sade HTML olsun.
```

#### index.html

```html
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TODO Uygulaması</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <header>
            <h1>Yapılacaklar Listem</h1>
            <p class="date" id="currentDate"></p>
        </header>

        <div class="input-section">
            <input
                type="text"
                id="taskInput"
                placeholder="Yeni bir görev ekle..."
                autocomplete="off"
            >
            <button id="addButton" class="btn btn-primary">
                Ekle
            </button>
        </div>

        <div class="filter-section">
            <button class="filter-btn active" data-filter="all">Tümü</button>
            <button class="filter-btn" data-filter="active">Aktif</button>
            <button class="filter-btn" data-filter="completed">Tamamlanan</button>
        </div>

        <ul id="taskList" class="task-list">
            <!-- Görevler buraya dinamik olarak eklenecek -->
        </ul>

        <div class="stats">
            <span id="taskCount">0 görev</span>
            <button id="clearCompleted" class="btn btn-secondary">
                Tamamlananları Temizle
            </button>
        </div>
    </div>

    <script src="js/app.js"></script>
</body>
</html>
```

### Adım 3: CSS ile Styling

#### AI Prompt

```
TODO uygulaması için modern, minimalist bir CSS tasarımı oluştur.
Özellikler:
- Merkeze hizalanmış container
- Gradient arka plan
- Hover efektleri
- Tamamlanan görevler için üstü çizili stil
- Responsive tasarım
- Yumuşak animasyonlar
- Modern renk paleti (mavi tonları)
```

#### css/style.css

```css
/* Genel Resetleme */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 20px;
}

.container {
    background: white;
    border-radius: 20px;
    box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
    max-width: 600px;
    width: 100%;
    padding: 40px;
}

/* Header */
header {
    text-align: center;
    margin-bottom: 30px;
}

header h1 {
    color: #333;
    font-size: 2.5rem;
    margin-bottom: 10px;
}

.date {
    color: #888;
    font-size: 1rem;
}

/* Input Section */
.input-section {
    display: flex;
    gap: 10px;
    margin-bottom: 20px;
}

#taskInput {
    flex: 1;
    padding: 15px;
    border: 2px solid #e0e0e0;
    border-radius: 10px;
    font-size: 1rem;
    transition: all 0.3s ease;
}

#taskInput:focus {
    outline: none;
    border-color: #667eea;
    box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
}

.btn {
    padding: 15px 25px;
    border: none;
    border-radius: 10px;
    font-size: 1rem;
    cursor: pointer;
    transition: all 0.3s ease;
    font-weight: 600;
}

.btn-primary {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: white;
}

.btn-primary:hover {
    transform: translateY(-2px);
    box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
}

.btn-secondary {
    background: #f44336;
    color: white;
    padding: 10px 20px;
    font-size: 0.9rem;
}

.btn-secondary:hover {
    background: #d32f2f;
    transform: translateY(-2px);
}

/* Filter Section */
.filter-section {
    display: flex;
    gap: 10px;
    margin-bottom: 20px;
    justify-content: center;
}

.filter-btn {
    padding: 8px 16px;
    border: 2px solid #e0e0e0;
    background: white;
    border-radius: 20px;
    cursor: pointer;
    transition: all 0.3s ease;
    font-size: 0.9rem;
}

.filter-btn:hover {
    border-color: #667eea;
    color: #667eea;
}

.filter-btn.active {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: white;
    border-color: transparent;
}

/* Task List */
.task-list {
    list-style: none;
    margin-bottom: 20px;
    max-height: 400px;
    overflow-y: auto;
}

.task-list::-webkit-scrollbar {
    width: 8px;
}

.task-list::-webkit-scrollbar-track {
    background: #f1f1f1;
    border-radius: 10px;
}

.task-list::-webkit-scrollbar-thumb {
    background: #667eea;
    border-radius: 10px;
}

.task-item {
    display: flex;
    align-items: center;
    padding: 15px;
    background: #f9f9f9;
    border-radius: 10px;
    margin-bottom: 10px;
    transition: all 0.3s ease;
    animation: slideIn 0.3s ease;
}

@keyframes slideIn {
    from {
        opacity: 0;
        transform: translateX(-20px);
    }
    to {
        opacity: 1;
        transform: translateX(0);
    }
}

.task-item:hover {
    background: #f0f0f0;
    transform: translateX(5px);
}

.task-item.completed {
    opacity: 0.6;
}

.task-item.completed .task-text {
    text-decoration: line-through;
    color: #888;
}

.task-checkbox {
    width: 24px;
    height: 24px;
    margin-right: 15px;
    cursor: pointer;
    accent-color: #667eea;
}

.task-text {
    flex: 1;
    font-size: 1rem;
    color: #333;
}

.task-delete {
    background: #ff5252;
    color: white;
    border: none;
    padding: 8px 12px;
    border-radius: 5px;
    cursor: pointer;
    font-size: 0.9rem;
    transition: all 0.3s ease;
}

.task-delete:hover {
    background: #ff1744;
    transform: scale(1.1);
}

/* Stats */
.stats {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding-top: 20px;
    border-top: 2px solid #e0e0e0;
}

#taskCount {
    color: #888;
    font-size: 0.9rem;
}

/* Hidden Class */
.hidden {
    display: none !important;
}

/* Responsive Design */
@media (max-width: 600px) {
    .container {
        padding: 20px;
    }

    header h1 {
        font-size: 2rem;
    }

    .input-section {
        flex-direction: column;
    }

    .filter-section {
        flex-wrap: wrap;
    }
}
```

### Adım 4: JavaScript ile İşlevsellik

#### AI Prompt

```
TODO uygulaması için JavaScript kodu yaz.
Özellikler:
- Görev ekleme
- Görev silme
- Görev tamamlama/tamamlamayı geri alma
- localStorage ile veri saklama
- Filtreleme (tümü, aktif, tamamlanan)
- Tamamlanan görevleri temizleme
- Görev sayısını gösterme
- Güncel tarihi gösterme
- Enter tuşu ile görev ekleme
Modern JavaScript (ES6+) kullan, yorumlu kod yaz.
```

#### js/app.js

```javascript
// DOM Elementlerini Seçme
const taskInput = document.getElementById('taskInput');
const addButton = document.getElementById('addButton');
const taskList = document.getElementById('taskList');
const taskCount = document.getElementById('taskCount');
const clearCompleted = document.getElementById('clearCompleted');
const filterButtons = document.querySelectorAll('.filter-btn');
const currentDateElement = document.getElementById('currentDate');

// Global Değişkenler
let tasks = [];
let currentFilter = 'all';

// Sayfa Yüklendiğinde Çalışacak Fonksiyon
document.addEventListener('DOMContentLoaded', () => {
    loadTasks();
    displayDate();
    renderTasks();
    updateTaskCount();
});

// Güncel Tarihi Gösterme
function displayDate() {
    const now = new Date();
    const options = {
        weekday: 'long',
        year: 'numeric',
        month: 'long',
        day: 'numeric'
    };
    currentDateElement.textContent = now.toLocaleDateString('tr-TR', options);
}

// LocalStorage'dan Görevleri Yükleme
function loadTasks() {
    const storedTasks = localStorage.getItem('tasks');
    if (storedTasks) {
        tasks = JSON.parse(storedTasks);
    }
}

// LocalStorage'a Görevleri Kaydetme
function saveTasks() {
    localStorage.setItem('tasks', JSON.stringify(tasks));
}

// Görev Ekleme
function addTask() {
    const taskText = taskInput.value.trim();

    // Boş görev kontrolü
    if (taskText === '') {
        alert('Lütfen bir görev girin!');
        return;
    }

    // Yeni görev objesi oluşturma
    const task = {
        id: Date.now(),
        text: taskText,
        completed: false,
        createdAt: new Date().toISOString()
    };

    // Görev listesine ekleme
    tasks.unshift(task); // En başa ekle

    // Input'u temizleme
    taskInput.value = '';
    taskInput.focus();

    // Kaydetme ve gösterme
    saveTasks();
    renderTasks();
    updateTaskCount();
}

// Görev Silme
function deleteTask(id) {
    tasks = tasks.filter(task => task.id !== id);
    saveTasks();
    renderTasks();
    updateTaskCount();
}

// Görev Durumunu Değiştirme
function toggleTask(id) {
    const task = tasks.find(task => task.id === id);
    if (task) {
        task.completed = !task.completed;
        saveTasks();
        renderTasks();
        updateTaskCount();
    }
}

// Tamamlanan Görevleri Temizleme
function clearCompletedTasks() {
    tasks = tasks.filter(task => !task.completed);
    saveTasks();
    renderTasks();
    updateTaskCount();
}

// Görevleri Filtreleme
function filterTasks(filter) {
    currentFilter = filter;

    // Aktif filtre butonunu güncelleme
    filterButtons.forEach(btn => {
        btn.classList.remove('active');
        if (btn.dataset.filter === filter) {
            btn.classList.add('active');
        }
    });

    renderTasks();
}

// Görevleri Ekrana Yazdırma
function renderTasks() {
    // Listeyi temizle
    taskList.innerHTML = '';

    // Filtrelenmiş görevleri al
    let filteredTasks = tasks;

    if (currentFilter === 'active') {
        filteredTasks = tasks.filter(task => !task.completed);
    } else if (currentFilter === 'completed') {
        filteredTasks = tasks.filter(task => task.completed);
    }

    // Görev yoksa mesaj göster
    if (filteredTasks.length === 0) {
        const emptyMessage = document.createElement('li');
        emptyMessage.className = 'task-item';
        emptyMessage.style.justifyContent = 'center';
        emptyMessage.style.color = '#888';
        emptyMessage.textContent = currentFilter === 'completed'
            ? 'Tamamlanmış görev yok'
            : 'Henüz görev eklenmemiş';
        taskList.appendChild(emptyMessage);
        return;
    }

    // Her görev için liste elemanı oluşturma
    filteredTasks.forEach(task => {
        const li = document.createElement('li');
        li.className = `task-item ${task.completed ? 'completed' : ''}`;
        li.dataset.id = task.id;

        // Checkbox
        const checkbox = document.createElement('input');
        checkbox.type = 'checkbox';
        checkbox.className = 'task-checkbox';
        checkbox.checked = task.completed;
        checkbox.addEventListener('change', () => toggleTask(task.id));

        // Görev metni
        const taskText = document.createElement('span');
        taskText.className = 'task-text';
        taskText.textContent = task.text;

        // Silme butonu
        const deleteBtn = document.createElement('button');
        deleteBtn.className = 'task-delete';
        deleteBtn.textContent = 'Sil';
        deleteBtn.addEventListener('click', () => deleteTask(task.id));

        // Elemanları birleştirme
        li.appendChild(checkbox);
        li.appendChild(taskText);
        li.appendChild(deleteBtn);

        taskList.appendChild(li);
    });
}

// Görev Sayısını Güncelleme
function updateTaskCount() {
    const activeCount = tasks.filter(task => !task.completed).length;
    taskCount.textContent = `${activeCount} aktif görev`;
}

// Event Listeners
addButton.addEventListener('click', addTask);

taskInput.addEventListener('keypress', (e) => {
    if (e.key === 'Enter') {
        addTask();
    }
});

clearCompleted.addEventListener('click', clearCompletedTasks);

filterButtons.forEach(btn => {
    btn.addEventListener('click', () => {
        filterTasks(btn.dataset.filter);
    });
});
```

### Adım 5: Uygulamayı Çalıştırma

1. `index.html` dosyasını bir tarayıcıda açın
2. Veya VS Code'da Live Server kullanın:
   - Sağ tıklayın > "Open with Live Server"

### Adım 6: Geliştirmeler (İsteğe Bağlı)

#### AI Prompt İle Ek Özellikler

```
TODO uygulamasına şu özellikleri ekle:
1. Görev düzenleme (edit) özelliği
2. Önem derecesi (yüksek, orta, düşük) ekleme
3. Görevleri sürükle-bırak ile sıralama
4. Görevlere son tarih ekleme
5. Karanlık mod (dark mode)
```

### Öğrenilen Kavramlar

- DOM manipülasyonu
- Event handling
- LocalStorage kullanımı
- Array metodları (filter, find, map)
- ES6+ özellikleri
- Responsive tasarım
- CSS animasyonlar
- AI ile kod geliştirme süreci

---

## REST API Oluşturma

Node.js ve Express kullanarak basit bir REST API oluşturacağız.

### Hedefler

- Express.js ile API geliştirmek
- CRUD operasyonları yapmak
- Middleware kullanımı
- Hata yönetimi
- API testleri

### Adım 1: Proje Kurulumu

#### AI Prompt

```
Node.js ve Express kullanarak bir REST API projesi kurmak istiyorum.
Şunlar olsun:
- Kullanıcı yönetimi (users)
- CRUD operasyonları
- Middleware'ler
- Basit veri saklama için array kullan (veritabanı yok)
Proje yapısını ve package.json'u oluştur.
```

#### Kurulum Adımları

```bash
# Proje klasörü oluşturma
mkdir user-api
cd user-api

# package.json oluşturma
npm init -y

# Gerekli paketleri yükleme
npm install express
npm install --save-dev nodemon
```

#### Klasör Yapısı

```
user-api/
│
├── node_modules/
├── src/
│   ├── routes/
│   │   └── users.js
│   ├── middleware/
│   │   └── validator.js
│   └── app.js
├── package.json
└── .gitignore
```

### Adım 2: package.json Ayarları

```json
{
  "name": "user-api",
  "version": "1.0.0",
  "description": "Basit kullanıcı yönetim API'si",
  "main": "src/app.js",
  "scripts": {
    "start": "node src/app.js",
    "dev": "nodemon src/app.js"
  },
  "keywords": ["api", "express", "rest"],
  "author": "",
  "license": "ISC",
  "dependencies": {
    "express": "^4.18.2"
  },
  "devDependencies": {
    "nodemon": "^3.0.1"
  }
}
```

### Adım 3: Ana Uygulama Dosyası (app.js)

#### AI Prompt

```
Express.js kullanarak ana uygulama dosyası oluştur.
Şunlar olsun:
- Express kurulumu
- JSON middleware
- CORS aktif
- Temel route'lar
- Error handling
- 3000 portunda çalışsın
```

#### src/app.js

```javascript
const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

// Middleware'ler
app.use(express.json()); // JSON parsing
app.use(express.urlencoded({ extended: true })); // URL-encoded parsing

// CORS (Cross-Origin Resource Sharing)
app.use((req, res, next) => {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');
    res.header('Access-Control-Allow-Headers', 'Content-Type, Authorization');
    next();
});

// Request logging middleware
app.use((req, res, next) => {
    console.log(`${new Date().toISOString()} - ${req.method} ${req.path}`);
    next();
});

// Routes
const userRoutes = require('./routes/users');
app.use('/api/users', userRoutes);

// Ana route
app.get('/', (req, res) => {
    res.json({
        message: 'Kullanıcı API\'sine hoş geldiniz',
        endpoints: {
            users: '/api/users',
            getUser: '/api/users/:id',
            createUser: 'POST /api/users',
            updateUser: 'PUT /api/users/:id',
            deleteUser: 'DELETE /api/users/:id'
        }
    });
});

// 404 Handler
app.use((req, res) => {
    res.status(404).json({
        error: 'Endpoint bulunamadı',
        path: req.path
    });
});

// Error Handler
app.use((err, req, res, next) => {
    console.error(err.stack);
    res.status(500).json({
        error: 'Sunucu hatası',
        message: err.message
    });
});

// Sunucuyu başlatma
app.listen(PORT, () => {
    console.log(`Sunucu http://localhost:${PORT} adresinde çalışıyor`);
});

module.exports = app;
```

### Adım 4: User Routes (CRUD)

#### AI Prompt

```
Kullanıcı yönetimi için CRUD route'ları oluştur.
Her kullanıcı şu bilgilere sahip olsun:
- id (unique)
- name (string)
- email (string)
- age (number)
- createdAt (tarih)

GET /api/users - Tüm kullanıcılar
GET /api/users/:id - Tek kullanıcı
POST /api/users - Yeni kullanıcı
PUT /api/users/:id - Kullanıcı güncelleme
DELETE /api/users/:id - Kullanıcı silme

Validation ekle ve hata mesajları ver.
```

#### src/routes/users.js

```javascript
const express = require('express');
const router = express.Router();
const { validateUser, validateUserId } = require('../middleware/validator');

// Geçici veri deposu (normalde veritabanı kullanılır)
let users = [
    {
        id: 1,
        name: 'Ahmet Yılmaz',
        email: 'ahmet@example.com',
        age: 25,
        createdAt: new Date().toISOString()
    },
    {
        id: 2,
        name: 'Ayşe Demir',
        email: 'ayse@example.com',
        age: 30,
        createdAt: new Date().toISOString()
    }
];

let nextId = 3;

// GET /api/users - Tüm kullanıcıları getir
router.get('/', (req, res) => {
    // Query parametreleri ile filtreleme
    const { name, minAge, maxAge } = req.query;

    let filteredUsers = [...users];

    if (name) {
        filteredUsers = filteredUsers.filter(user =>
            user.name.toLowerCase().includes(name.toLowerCase())
        );
    }

    if (minAge) {
        filteredUsers = filteredUsers.filter(user => user.age >= parseInt(minAge));
    }

    if (maxAge) {
        filteredUsers = filteredUsers.filter(user => user.age <= parseInt(maxAge));
    }

    res.json({
        success: true,
        count: filteredUsers.length,
        data: filteredUsers
    });
});

// GET /api/users/:id - Tek kullanıcı getir
router.get('/:id', validateUserId, (req, res) => {
    const userId = parseInt(req.params.id);
    const user = users.find(u => u.id === userId);

    if (!user) {
        return res.status(404).json({
            success: false,
            error: 'Kullanıcı bulunamadı'
        });
    }

    res.json({
        success: true,
        data: user
    });
});

// POST /api/users - Yeni kullanıcı oluştur
router.post('/', validateUser, (req, res) => {
    const { name, email, age } = req.body;

    // Email kontrolü (unique olmalı)
    const existingUser = users.find(u => u.email === email);
    if (existingUser) {
        return res.status(400).json({
            success: false,
            error: 'Bu email adresi zaten kullanılıyor'
        });
    }

    // Yeni kullanıcı oluştur
    const newUser = {
        id: nextId++,
        name,
        email,
        age,
        createdAt: new Date().toISOString()
    };

    users.push(newUser);

    res.status(201).json({
        success: true,
        message: 'Kullanıcı başarıyla oluşturuldu',
        data: newUser
    });
});

// PUT /api/users/:id - Kullanıcı güncelle
router.put('/:id', validateUserId, validateUser, (req, res) => {
    const userId = parseInt(req.params.id);
    const userIndex = users.findIndex(u => u.id === userId);

    if (userIndex === -1) {
        return res.status(404).json({
            success: false,
            error: 'Kullanıcı bulunamadı'
        });
    }

    const { name, email, age } = req.body;

    // Email kontrolü (başka kullanıcıda yoksa)
    const existingUser = users.find(u => u.email === email && u.id !== userId);
    if (existingUser) {
        return res.status(400).json({
            success: false,
            error: 'Bu email adresi başka bir kullanıcı tarafından kullanılıyor'
        });
    }

    // Kullanıcıyı güncelle
    users[userIndex] = {
        ...users[userIndex],
        name,
        email,
        age,
        updatedAt: new Date().toISOString()
    };

    res.json({
        success: true,
        message: 'Kullanıcı başarıyla güncellendi',
        data: users[userIndex]
    });
});

// DELETE /api/users/:id - Kullanıcı sil
router.delete('/:id', validateUserId, (req, res) => {
    const userId = parseInt(req.params.id);
    const userIndex = users.findIndex(u => u.id === userId);

    if (userIndex === -1) {
        return res.status(404).json({
            success: false,
            error: 'Kullanıcı bulunamadı'
        });
    }

    const deletedUser = users[userIndex];
    users = users.filter(u => u.id !== userId);

    res.json({
        success: true,
        message: 'Kullanıcı başarıyla silindi',
        data: deletedUser
    });
});

module.exports = router;
```

### Adım 5: Validation Middleware

#### src/middleware/validator.js

```javascript
// Kullanıcı verisi doğrulama
function validateUser(req, res, next) {
    const { name, email, age } = req.body;
    const errors = [];

    // İsim kontrolü
    if (!name || typeof name !== 'string' || name.trim().length < 2) {
        errors.push('İsim en az 2 karakter olmalıdır');
    }

    // Email kontrolü
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!email || !emailRegex.test(email)) {
        errors.push('Geçerli bir email adresi giriniz');
    }

    // Yaş kontrolü
    if (!age || typeof age !== 'number' || age < 0 || age > 150) {
        errors.push('Yaş 0 ile 150 arasında bir sayı olmalıdır');
    }

    // Hata varsa döndür
    if (errors.length > 0) {
        return res.status(400).json({
            success: false,
            errors
        });
    }

    next();
}

// Kullanıcı ID doğrulama
function validateUserId(req, res, next) {
    const userId = parseInt(req.params.id);

    if (isNaN(userId) || userId < 1) {
        return res.status(400).json({
            success: false,
            error: 'Geçersiz kullanıcı ID\'si'
        });
    }

    next();
}

module.exports = {
    validateUser,
    validateUserId
};
```

### Adım 6: API Test Etme

#### Thunder Client veya REST Client ile

**.http dosyası oluşturun** (VS Code REST Client eklentisi için)

```http
### Tüm kullanıcıları getir
GET http://localhost:3000/api/users

### Tek kullanıcı getir
GET http://localhost:3000/api/users/1

### Filtreleme ile kullanıcıları getir
GET http://localhost:3000/api/users?minAge=25&maxAge=40

### Yeni kullanıcı oluştur
POST http://localhost:3000/api/users
Content-Type: application/json

{
  "name": "Mehmet Kaya",
  "email": "mehmet@example.com",
  "age": 28
}

### Kullanıcı güncelle
PUT http://localhost:3000/api/users/1
Content-Type: application/json

{
  "name": "Ahmet Yılmaz Güncellendi",
  "email": "ahmet.updated@example.com",
  "age": 26
}

### Kullanıcı sil
DELETE http://localhost:3000/api/users/2

### Hatalı kullanıcı oluşturma (validation testi)
POST http://localhost:3000/api/users
Content-Type: application/json

{
  "name": "A",
  "email": "gecersiz-email",
  "age": 200
}
```

### Adım 7: Uygulamayı Çalıştırma

```bash
# Development mode (otomatik yeniden başlatma)
npm run dev

# Production mode
npm start
```

Tarayıcıda `http://localhost:3000` adresine gidin.

### Öğrenilen Kavramlar

- Express.js routing
- Middleware kullanımı
- RESTful API tasarımı
- HTTP metodları (GET, POST, PUT, DELETE)
- Status kodları (200, 201, 400, 404, 500)
- Validation
- Error handling
- CRUD operasyonları

---

## Kod Review Örneği

AI ile kod inceleme ve iyileştirme süreci.

### Senaryo

Aşağıdaki kod kötü yazılmış bir JavaScript fonksiyonudur. AI'dan yardım alarak inceleyip iyileştireceğiz.

### Orijinal Kod (Kötü Örnek)

```javascript
function calc(a, b, c) {
    var x = a + b
    var y = x * c
    if (y > 100) {
        console.log("büyük")
    } else {
        console.log("küçük")
    }
    return y
}

var result = calc(5, 10, 8)
console.log(result)
```

### AI Prompt

```
Bu JavaScript kodunu incele ve şu açılardan değerlendir:
1. Kod okunabilirliği
2. Değişken isimlendirme
3. Modern JavaScript kullanımı
4. Fonksiyon tasarımı
5. Hata yönetimi
6. Dokümantasyon

Sonra iyileştirilmiş versiyonunu yaz ve her değişikliği açıkla.
```

### AI'dan Gelen Review

**Tespit Edilen Sorunlar:**

1. **Değişken İsimlendirme**: `a`, `b`, `c`, `x`, `y` anlamsız isimler
2. **var Kullanımı**: Modern JavaScript'te `const`/`let` kullanılmalı
3. **Console.log**: Fonksiyon yan etki (side effect) oluşturuyor
4. **Sihirli Sayı**: `100` değeri sabit kodlanmış
5. **Türkçe Karakter**: String'lerde Türkçe karakter kullanımı
6. **Dokümantasyon Yok**: Fonksiyonun ne yaptığı açıklanmamış
7. **Hata Yönetimi**: Parametre kontrolü yok
8. **Tek Sorumluluk**: Fonksiyon hem hesaplama hem de yazdırma yapıyor

### İyileştirilmiş Kod

```javascript
/**
 * İki sayının toplamını üçüncü bir sayı ile çarpar
 * @param {number} firstNumber - İlk sayı
 * @param {number} secondNumber - İkinci sayı
 * @param {number} multiplier - Çarpan
 * @param {number} threshold - Eşik değeri (varsayılan: 100)
 * @returns {Object} Hesaplama sonucu ve sınıflandırma
 * @throws {Error} Parametreler sayı değilse hata fırlatır
 */
function calculateAndClassify(
    firstNumber,
    secondNumber,
    multiplier,
    threshold = 100
) {
    // Parametre validasyonu
    const params = [firstNumber, secondNumber, multiplier, threshold];
    if (params.some(param => typeof param !== 'number' || isNaN(param))) {
        throw new Error('Tüm parametreler geçerli sayı olmalıdır');
    }

    // Hesaplama
    const sum = firstNumber + secondNumber;
    const result = sum * multiplier;

    // Sınıflandırma
    const classification = result > threshold ? 'buyuk' : 'kucuk';

    // Sonuç objesi
    return {
        result,
        classification,
        details: {
            sum,
            multiplier,
            threshold
        }
    };
}

// Kullanım örneği
try {
    const calculation = calculateAndClassify(5, 10, 8);
    console.log(`Sonuç: ${calculation.result}`);
    console.log(`Sınıflandırma: ${calculation.classification}`);
    console.log('Detaylar:', calculation.details);
} catch (error) {
    console.error('Hata:', error.message);
}

// Test senaryoları
console.log('\n--- Test Senaryoları ---');

// Normal kullanım
const test1 = calculateAndClassify(5, 10, 8);
console.log('Test 1:', test1);

// Özel threshold
const test2 = calculateAndClassify(5, 10, 8, 200);
console.log('Test 2:', test2);

// Hata durumu
try {
    const test3 = calculateAndClassify('5', 10, 8);
} catch (error) {
    console.log('Test 3 Hata:', error.message);
}
```

### Değişiklik Açıklamaları

1. **Fonksiyon İsmi**: `calc` → `calculateAndClassify` (açıklayıcı)
2. **Parametreler**: `a, b, c` → `firstNumber, secondNumber, multiplier` (anlamlı)
3. **Değişkenler**: `x, y` → `sum, result` (ne olduğu belli)
4. **const Kullanımı**: `var` yerine `const` kullanıldı
5. **JSDoc Eklendi**: Fonksiyon dokümantasyonu
6. **Parametre Validasyonu**: Tip kontrolü eklendi
7. **Default Parametre**: Threshold için varsayılan değer
8. **Return Object**: Sadece sayı yerine detaylı obje
9. **Separation of Concerns**: Console.log fonksiyon dışına alındı
10. **Error Handling**: Try-catch ile hata yönetimi

---

## Bug Fixing Örneği

Gerçek dünya senaryolarında hata bulma ve düzeltme.

### Senaryo: Shopping Cart Bug

Aşağıdaki alışveriş sepeti kodunda birkaç bug var.

### Hatalı Kod

```javascript
class ShoppingCart {
    constructor() {
        this.items = [];
        this.discount = 0;
    }

    addItem(product, quantity) {
        this.items.push({
            product: product,
            quantity: quantity,
            price: product.price
        });
    }

    removeItem(productId) {
        this.items = this.items.filter(item => item.product.id != productId);
    }

    getTotal() {
        let total = 0;
        for (let i = 0; i <= this.items.length; i++) {
            total += this.items[i].price * this.items[i].quantity;
        }
        return total - this.discount;
    }

    applyDiscount(discountPercent) {
        this.discount = this.getTotal() * (discountPercent / 100);
    }

    checkout() {
        if (this.items.length = 0) {
            return "Sepetiniz boş!";
        }

        const total = this.getTotal();
        this.items = [];
        return total;
    }
}

// Test kodu
const cart = new ShoppingCart();

cart.addItem({ id: 1, name: 'Laptop', price: 5000 }, 1);
cart.addItem({ id: 2, name: 'Mouse', price: 100 }, 2);

console.log('Toplam:', cart.getTotal());

cart.applyDiscount(10);
console.log('İndirimli Toplam:', cart.getTotal());

const finalTotal = cart.checkout();
console.log('Ödeme:', finalTotal);
```

### AI Prompt

```
Bu alışveriş sepeti kodunda hatalar var. Şunları yap:
1. Tüm hataları bul ve açıkla
2. Her hatanın neden problem olduğunu söyle
3. Düzeltilmiş kodu yaz
4. Test senaryoları ekle
```

### Bulunan Buglar

1. **Bug #1 - Array İndeksi**: `getTotal()` metodunda `i <= this.items.length` (off-by-one error)
2. **Bug #2 - Eşitlik Kontrolü**: `checkout()` metodunda `this.items.length = 0` (atama, karşılaştırma değil)
3. **Bug #3 - Tip Kontrolü**: `removeItem()` metodunda `!=` yerine `!==` kullanılmalı
4. **Bug #4 - İndirim Hesaplama**: `applyDiscount()` çağrıldığında indirim sabit kalıyor
5. **Bug #5 - Null/Undefined Kontrolü**: Eksik ürün kontrolü

### Düzeltilmiş Kod

```javascript
class ShoppingCart {
    constructor() {
        this.items = [];
        this.discountPercent = 0;
    }

    /**
     * Sepete ürün ekler
     * @param {Object} product - Ürün objesi (id, name, price içermeli)
     * @param {number} quantity - Miktar
     * @throws {Error} Geçersiz parametre durumunda
     */
    addItem(product, quantity) {
        // Validasyon
        if (!product || typeof product !== 'object') {
            throw new Error('Geçersiz ürün');
        }

        if (!product.id || !product.name || typeof product.price !== 'number') {
            throw new Error('Ürün id, name ve price içermelidir');
        }

        if (typeof quantity !== 'number' || quantity <= 0) {
            throw new Error('Miktar pozitif bir sayı olmalıdır');
        }

        // Aynı ürün varsa miktarı artır
        const existingItem = this.items.find(item => item.product.id === product.id);

        if (existingItem) {
            existingItem.quantity += quantity;
        } else {
            this.items.push({
                product: { ...product }, // Object spread ile kopyala
                quantity: quantity
            });
        }
    }

    /**
     * Sepetten ürün çıkarır
     * @param {number|string} productId - Ürün ID'si
     * @returns {boolean} Silme başarılı mı
     */
    removeItem(productId) {
        const initialLength = this.items.length;
        this.items = this.items.filter(item => item.product.id !== productId); // === kullan
        return this.items.length < initialLength; // Silme başarılı mı?
    }

    /**
     * Sepetteki bir ürünün miktarını günceller
     * @param {number|string} productId - Ürün ID'si
     * @param {number} newQuantity - Yeni miktar
     */
    updateQuantity(productId, newQuantity) {
        if (newQuantity <= 0) {
            this.removeItem(productId);
            return;
        }

        const item = this.items.find(item => item.product.id === productId);
        if (item) {
            item.quantity = newQuantity;
        }
    }

    /**
     * Ara toplamı hesaplar (indirim olmadan)
     * @returns {number} Ara toplam
     */
    getSubtotal() {
        return this.items.reduce((total, item) => {
            return total + (item.product.price * item.quantity);
        }, 0);
    }

    /**
     * İndirim miktarını hesaplar
     * @returns {number} İndirim miktarı
     */
    getDiscountAmount() {
        return this.getSubtotal() * (this.discountPercent / 100);
    }

    /**
     * Toplam tutarı hesaplar (indirim dahil)
     * @returns {number} Toplam tutar
     */
    getTotal() {
        return this.getSubtotal() - this.getDiscountAmount();
    }

    /**
     * İndirim yüzdesi uygular
     * @param {number} discountPercent - İndirim yüzdesi (0-100)
     */
    applyDiscount(discountPercent) {
        if (typeof discountPercent !== 'number' || discountPercent < 0 || discountPercent > 100) {
            throw new Error('İndirim yüzdesi 0-100 arası olmalıdır');
        }
        this.discountPercent = discountPercent;
    }

    /**
     * Sepeti boşaltır ve toplam tutarı döner
     * @returns {number|string} Toplam tutar veya hata mesajı
     */
    checkout() {
        // === ile karşılaştırma (= değil)
        if (this.items.length === 0) {
            return 'Sepetiniz boş!';
        }

        const total = this.getTotal();
        this.items = [];
        this.discountPercent = 0;
        return total;
    }

    /**
     * Sepet özetini döner
     * @returns {Object} Sepet özeti
     */
    getSummary() {
        return {
            itemCount: this.items.length,
            totalItems: this.items.reduce((sum, item) => sum + item.quantity, 0),
            subtotal: this.getSubtotal(),
            discount: this.getDiscountAmount(),
            total: this.getTotal(),
            items: this.items.map(item => ({
                id: item.product.id,
                name: item.product.name,
                price: item.product.price,
                quantity: item.quantity,
                subtotal: item.product.price * item.quantity
            }))
        };
    }
}

// Test Senaryoları
console.log('=== Alışveriş Sepeti Test ===\n');

const cart = new ShoppingCart();

// Test 1: Ürün ekleme
console.log('Test 1: Ürün Ekleme');
cart.addItem({ id: 1, name: 'Laptop', price: 5000 }, 1);
cart.addItem({ id: 2, name: 'Mouse', price: 100 }, 2);
cart.addItem({ id: 3, name: 'Klavye', price: 300 }, 1);
console.log('Ara Toplam:', cart.getSubtotal()); // 5500
console.log('');

// Test 2: Aynı ürünü tekrar ekleme
console.log('Test 2: Aynı Ürünü Tekrar Ekleme');
cart.addItem({ id: 2, name: 'Mouse', price: 100 }, 1);
console.log('Mouse miktarı artırıldı');
console.log('Yeni Ara Toplam:', cart.getSubtotal()); // 5600
console.log('');

// Test 3: İndirim uygulama
console.log('Test 3: %10 İndirim Uygulama');
cart.applyDiscount(10);
console.log('İndirim Miktarı:', cart.getDiscountAmount()); // 560
console.log('İndirimli Toplam:', cart.getTotal()); // 5040
console.log('');

// Test 4: Sepet özeti
console.log('Test 4: Sepet Özeti');
console.log(JSON.stringify(cart.getSummary(), null, 2));
console.log('');

// Test 5: Ürün çıkarma
console.log('Test 5: Ürün Çıkarma');
const removed = cart.removeItem(3);
console.log('Klavye çıkarıldı:', removed);
console.log('Yeni Toplam:', cart.getTotal());
console.log('');

// Test 6: Miktar güncelleme
console.log('Test 6: Miktar Güncelleme');
cart.updateQuantity(1, 2);
console.log('Laptop miktarı 2\'ye çıkarıldı');
console.log('Yeni Toplam:', cart.getTotal());
console.log('');

// Test 7: Checkout
console.log('Test 7: Checkout');
const finalTotal = cart.checkout();
console.log('Ödeme Tutarı:', finalTotal);
console.log('Sepet Boşaldı mı?', cart.items.length === 0);
console.log('');

// Test 8: Boş sepet checkout
console.log('Test 8: Boş Sepet Checkout');
const emptyCheckout = cart.checkout();
console.log(emptyCheckout);
console.log('');

// Test 9: Hata durumları
console.log('Test 9: Hata Durumları');
try {
    cart.addItem(null, 1);
} catch (error) {
    console.log('Hata yakalandı:', error.message);
}

try {
    cart.addItem({ id: 1, name: 'Test' }, -1);
} catch (error) {
    console.log('Hata yakalandı:', error.message);
}

try {
    cart.applyDiscount(150);
} catch (error) {
    console.log('Hata yakalandı:', error.message);
}
```

### Bug Düzeltme Özeti

| Bug | Açıklama | Düzeltme |
|-----|----------|----------|
| Off-by-one error | `i <= length` yerine `i < length` | Reduce kullanarak düzeltildi |
| Assignment vs Comparison | `=` yerine `===` kullan | `===` ile düzeltildi |
| Type coercion | `!=` yerine `!==` kullan | `!==` ile düzeltildi |
| Discount calculation | İndirim yüzdesi saklanmalı | `discountPercent` değişkeni eklendi |
| Missing validation | Parametre kontrolü yok | Validasyon eklendi |
| No error handling | Try-catch yok | Error throwing eklendi |

---

## Veritabanı İşlemleri

SQLite kullanarak basit veritabanı işlemleri.

### AI Prompt

```
Node.js'de SQLite kullanarak basit bir öğrenci yönetim sistemi yap.
Özellikler:
- Öğrenci ekleme
- Öğrenci listeleme
- Öğrenci güncelleme
- Öğrenci silme
- Not ortalaması hesaplama
```

### Kod

```javascript
const sqlite3 = require('sqlite3').verbose();

// Veritabanı bağlantısı
const db = new sqlite3.Database('./students.db', (err) => {
    if (err) {
        console.error('Veritabanı hatası:', err.message);
    } else {
        console.log('Veritabanına bağlanıldı');
        createTable();
    }
});

// Tablo oluşturma
function createTable() {
    const sql = `
        CREATE TABLE IF NOT EXISTS students (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            email TEXT UNIQUE NOT NULL,
            grade REAL CHECK(grade >= 0 AND grade <= 100),
            created_at DATETIME DEFAULT CURRENT_TIMESTAMP
        )
    `;

    db.run(sql, (err) => {
        if (err) {
            console.error('Tablo oluşturma hatası:', err.message);
        } else {
            console.log('Students tablosu hazır');
        }
    });
}

// Öğrenci ekleme
function addStudent(name, email, grade) {
    return new Promise((resolve, reject) => {
        const sql = 'INSERT INTO students (name, email, grade) VALUES (?, ?, ?)';

        db.run(sql, [name, email, grade], function(err) {
            if (err) {
                reject(err);
            } else {
                resolve({ id: this.lastID, name, email, grade });
            }
        });
    });
}

// Tüm öğrencileri listeleme
function getAllStudents() {
    return new Promise((resolve, reject) => {
        const sql = 'SELECT * FROM students ORDER BY grade DESC';

        db.all(sql, [], (err, rows) => {
            if (err) {
                reject(err);
            } else {
                resolve(rows);
            }
        });
    });
}

// Ortalama hesaplama
function getAverageGrade() {
    return new Promise((resolve, reject) => {
        const sql = 'SELECT AVG(grade) as average FROM students';

        db.get(sql, [], (err, row) => {
            if (err) {
                reject(err);
            } else {
                resolve(row.average);
            }
        });
    });
}

// Test
async function main() {
    try {
        // Öğrenci ekle
        await addStudent('Ahmet Yılmaz', 'ahmet@example.com', 85);
        await addStudent('Ayşe Demir', 'ayse@example.com', 92);

        // Listele
        const students = await getAllStudents();
        console.log('Öğrenciler:', students);

        // Ortalama
        const avg = await getAverageGrade();
        console.log('Ortalama:', avg);
    } catch (error) {
        console.error('Hata:', error.message);
    } finally {
        db.close();
    }
}

main();
```

---

## Test Yazma

AI ile birim test (unit test) yazma.

### AI Prompt

```
Şu fonksiyon için Jest kullanarak kapsamlı unit testler yaz:

function isPalindrome(str) {
    const cleaned = str.toLowerCase().replace(/[^a-z0-9]/g, '');
    return cleaned === cleaned.split('').reverse().join('');
}

Edge case'leri de test et.
```

### Test Kodu

```javascript
// palindrome.test.js

describe('isPalindrome', () => {
    test('basit palindrom kelime', () => {
        expect(isPalindrome('kayak')).toBe(true);
    });

    test('basit palindrom olmayan kelime', () => {
        expect(isPalindrome('hello')).toBe(false);
    });

    test('büyük-küçük harf duyarsız', () => {
        expect(isPalindrome('Kayak')).toBe(true);
        expect(isPalindrome('KaYaK')).toBe(true);
    });

    test('boşluklu palindrom cümle', () => {
        expect(isPalindrome('A man a plan a canal Panama')).toBe(true);
    });

    test('noktalama işaretleri', () => {
        expect(isPalindrome('A Santa, at NASA')).toBe(true);
    });

    test('boş string', () => {
        expect(isPalindrome('')).toBe(true);
    });

    test('tek karakter', () => {
        expect(isPalindrome('a')).toBe(true);
    });

    test('sadece özel karakterler', () => {
        expect(isPalindrome('!!!')).toBe(true);
    });

    test('sayılar ile palindrom', () => {
        expect(isPalindrome('12321')).toBe(true);
    });

    test('sayılar ile palindrom olmayan', () => {
        expect(isPalindrome('12345')).toBe(false);
    });
});
```

---

## Özet

Bu dokümanda şu pratik örnekleri ele aldık:

1. **TODO Uygulaması**: Frontend geliştirme, DOM manipülasyonu, localStorage
2. **REST API**: Express.js, CRUD, middleware, validation
3. **Kod Review**: Kod kalitesi, best practices, refactoring
4. **Bug Fixing**: Hata bulma ve düzeltme teknikleri
5. **Veritabanı**: SQLite ile CRUD işlemleri
6. **Test Yazma**: Jest ile unit testing

Her örnek, AI araçlarını kullanarak nasıl daha hızlı ve etkili geliştirme yapabileceğinizi göstermektedir.
