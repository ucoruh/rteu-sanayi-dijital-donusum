# Gelistirme Araclari (Development Tools)

## Giris

Bu sayfa, yazilim gelistirme surecinde kullanilan temel araclari, kurulum rehberlerini ve en iyi uygulamalari icermektedir. Ogrenciler ve profesyonel geliştiriciler icin faydali bir referans kaynagidir.

## Icerik

- [Versiyon Kontrol Sistemleri](#versiyon-kontrol-sistemleri)
- [Entegre Gelistirme Ortamlari (IDE)](#entegre-gelistirme-ortamlari-ide)
- [Container ve Virtualizasyon](#container-ve-virtualizasyon)
- [Proje Yonetimi ve Isbirligi](#proje-yonetimi-ve-isbirligi)
- [API Gelistirme ve Test](#api-gelistirme-ve-test)
- [Veritabani Araclari](#veritabani-araclari)
- [CI/CD Araclari](#cicd-araclari)
- [Diger Faydali Araclar](#diger-faydali-araclar)

---

## Versiyon Kontrol Sistemleri

### 1. Git

**Link:** https://git-scm.com/

**Tanim:**
Git, dagitik versiyon kontrol sistemidir. Kod degisikliklerini takip etmek, isbirligi yapmak ve proje tarihcesini yonetmek icin kullanilir.

#### Kurulum

**Windows:**
1. https://git-scm.com/download/win adresinden yukleyin
2. Kurulumd a "Git Bash" secenegini secin
3. Varsayilan ayarlarla ilerleyin

**macOS:**
```bash
# Homebrew ile
brew install git

# Veya Xcode Command Line Tools ile
xcode-select --install
```

**Linux (Ubuntu/Debian):**
```bash
sudo apt update
sudo apt install git
```

#### İlk Ayarlar

```bash
# Kullanici bilgilerini ayarlama
git config --global user.name "Adiniz Soyadiniz"
git config --global user.email "email@example.com"

# Varsayilan branch adini ayarlama (yeni projeler icin)
git config --global init.defaultBranch main

# Ayarlari kontrol etme
git config --list
```

#### Temel Komutlar

```bash
# Yeni bir repo olusturma
git init

# Uzak repoyu klonlama
git clone https://github.com/kullanici/repo.git

# Degisiklikleri izleme
git status

# Dosya ekleme (staging)
git add dosya.txt
git add .  # Tum değişiklikleri ekle

# Commit olusturma
git commit -m "Commit mesaji"

# Uzak repoya gonderme
git push origin main

# Uzak repodan cekme
git pull origin main

# Branch olusturma ve gecis
git branch yeni-ozellik
git checkout yeni-ozellik
# Veya tek satirda:
git checkout -b yeni-ozellik

# Branch birlestirme
git checkout main
git merge yeni-ozellik

# Log göruntuleme
git log
git log --oneline --graph --all
```

#### Git Workflow Onerileri

**Feature Branch Workflow:**
1. `main` branch'inden yeni branch olustur
2. Ozellik/duzeltme yap
3. Commit'le
4. Pull request ac (GitHub/GitLab/Bitbucket)
5. Code review
6. Merge

**Commit Mesaji Onerileri:**
- Acik ve anlasilir
- Ilk satir kisa ozet (50 karakter)
- Gerekirse detayli aciklama
- Ornek: "Fix login button alignment on mobile"

---

### 2. GitHub

**Link:** https://github.com/

**Tanim:**
GitHub, Git repolarini host eden, isbirligi ve kod paylasimi platformudur.

#### Temel Ozellikler

- **Repositories:** Proje depolama
- **Issues:** Hata takip ve gorev yonetimi
- **Pull Requests:** Kod review ve isbirligi
- **Actions:** CI/CD otomasyonu
- **Pages:** Statik web sitesi hostingi
- **Discussions:** Topluluk forumu
- **Projects:** Kanban tahtasi proje yonetimi

#### GitHub Student Pack

**Link:** https://education.github.com/pack

**Faydalar:**
- GitHub Pro ucretsiz
- GitHub Copilot ucretsiz
- Domain, hosting, ve daha fazlasi

**Basvuru:**
1. Universite e-postanızla kayit olun
2. Ogrenci belgesi yukleyin
3. Onay bekleyin (genellikle 1-2 gun)

#### GitHub'da Proje Baslatma

```bash
# Yerel repoda
git init
git add .
git commit -m "Initial commit"

# GitHub'da yeni repo olustur (web arayuzu)

# Uzak repo baglama
git remote add origin https://github.com/kullanici/repo.git
git push -u origin main
```

#### README.md Hazirlama

```markdown
# Proje Adi

Kisaca proje aciklamasi.

## Kurulum

```bash
npm install
```

## Kullanim

```bash
npm start
```

## Katki

Pull request'ler kabul edilir.

## Lisans

MIT
```

---

### 3. GitLab

**Link:** https://gitlab.com/

**Ozellikler:**
- GitHub'a benzer
- Daha gelismis CI/CD (GitLab CI)
- Self-hosted secenek
- Ucretsiz private repo

---

### 4. Bitbucket

**Link:** https://bitbucket.org/

**Ozellikler:**
- Atlassian urunleri (Jira, Confluence) ile entegrasyon
- Ucretsiz private repo
- Git ve Mercurial destegi

---

## Entegre Gelistirme Ortamlari (IDE)

### 5. Visual Studio Code (VS Code)

**Link:** https://code.visualstudio.com/

**Tanim:**
Microsoft'un acik kaynak, hafif ve guclu kod editoru.

#### Kurulum

**Windows:**
1. https://code.visualstudio.com/ adresinden yukleyin
2. "Add to PATH" secenegini isaretleyin

**macOS:**
```bash
brew install --cask visual-studio-code
```

**Linux:**
```bash
sudo snap install code --classic
```

#### Temel Ozellilkler

- **IntelliSense:** Kod tamamlama
- **Debugging:** Entegre debugger
- **Git Integration:** Git komutlari arayuzden
- **Extensions:** Eklenti ekosistemi
- **Terminal:** Entegre terminal

#### Tavsiye Edilen Eklentiler

**Genel:**
- **Prettier:** Kod formatlayici
- **ESLint:** JavaScript linting
- **GitLens:** Gelismis Git özellikleri
- **Live Share:** Isbirligi (coklu kullanici ayni dosya)
- **Path Intellisense:** Dosya yolu tamamlama

**Python:**
- **Python (Microsoft):** Python destegi
- **Pylance:** Gelismis IntelliSense
- **Python Docstring Generator**

**Web Gelistirme:**
- **Live Server:** Canli HTML onizleme
- **Auto Rename Tag:** HTML tag otomatik degistirme
- **CSS Peek:** CSS tanimlarini goruntuleme

**Veritabani:**
- **SQLTools:** SQL sorgu ve yonetimi

**Docker:**
- **Docker (Microsoft):** Docker container yonetimi

**AI:**
- **GitHub Copilot:** AI kod asistani (ogrenciler icin ucretsiz)
- **TabNine / Codeium:** Alternatif AI kod tamamlama

#### Faydali Kisayollar (Windows/Linux | macOS)

- **Komut Paleti:** `Ctrl+Shift+P` | `Cmd+Shift+P`
- **Dosya Ara:** `Ctrl+P` | `Cmd+P`
- **Terminal Ac:** `Ctrl+` | `Cmd+``
- **Satirlari Yorumlama:** `Ctrl+/` | `Cmd+/`
- **Format Document:** `Shift+Alt+F` | `Shift+Option+F`
- **Multi-Cursor:** `Alt+Click` | `Option+Click`

#### VS Code Ayarlari (settings.json)

```json
{
  "editor.formatOnSave": true,
  "editor.tabSize": 2,
  "editor.wordWrap": "on",
  "files.autoSave": "afterDelay",
  "terminal.integrated.fontSize": 14,
  "workbench.iconTheme": "material-icon-theme",
  "editor.minimap.enabled": true
}
```

---

### 6. PyCharm

**Link:** https://www.jetbrains.com/pycharm/

**Tanim:**
JetBrains'in Python icin ozel IDE'si.

**Versiyonlar:**
- **Community (Ucretsiz):** Temel Python gelistirme
- **Professional (Ucretli):** Web gelistirme (Django, Flask), veritabani, uzaktan gelistirme

**Ogrenci Lisansi:**
- **Ucretsiz Professional:** Universite e-postanizla basvurun
- **Link:** https://www.jetbrains.com/community/education/

**Avantajlar:**
- Guclu refactoring
- Gelismis debugger
- Django/Flask destek (Pro)
- Bilimsel araclar (Jupyter, NumPy, vb.)

---

### 7. IntelliJ IDEA

**Link:** https://www.jetbrains.com/idea/

**Tanim:**
Java icin en populer IDE (diger JVM dilleri de destekler: Kotlin, Scala).

**Versiyonlar:**
- **Community (Ucretsiz):** Java, Kotlin, Groovy, Scala
- **Ultimate (Ucretli/Ogrenci Ucretsiz):** Web, Spring, veritabani, vb.

---

### 8. Android Studio

**Link:** https://developer.android.com/studio

**Tanim:**
Android uygulama gelistirme icin resmi IDE (IntelliJ tabanli).

**Ozellikler:**
- Android emulator
- Layout editor
- Profiler ve debugger

---

### 9. Xcode

**Link:** https://developer.apple.com/xcode/

**Platform:** macOS (sadece Mac'te calisir)

**Tanim:**
iOS, macOS, watchOS, tvOS uygulama gelistirme icin Apple'in resmi IDE'si.

**Programlama Dilleri:** Swift, Objective-C

---

### 10. Eclipse

**Link:** https://www.eclipse.org/

**Tanim:**
Acik kaynak, Java odakli IDE (eklentilerle C++, Python vb. da destekler).

**Not:** Artik daha az populer, IntelliJ ve VS Code tercih ediliyor.

---

### 11. Sublime Text

**Link:** https://www.sublimetext.com/

**Tanim:**
Hafif ve hizli metin editoru.

**Fiyatlandirma:**
- Ucretsiz deneme (sinirsiz, ara sira satin alma uyarisi)
- Lisans: $99 (bir kerelik)

---

### 12. Atom

**Link:** https://atom.io/

**Durum:** GitHub tarafindan 2022'de durduruldu (artik gelistirilmiyor).

**Alternatif:** VS Code (benzer ozellikler, daha hizli)

---

## Container ve Virtualizasyon

### 13. Docker

**Link:** https://www.docker.com/

**Tanim:**
Uygulamalari containerize etmek icin platform. Tutarli gelistirme, test ve production ortamlari saglar.

#### Kurulum

**Windows:**
1. Docker Desktop indirin: https://www.docker.com/products/docker-desktop/
2. Kurun ve Windows icin WSL 2 backend'i etkinlestirin

**macOS:**
```bash
brew install --cask docker
```

**Linux (Ubuntu):**
```bash
# Resmi rehber: https://docs.docker.com/engine/install/ubuntu/
sudo apt update
sudo apt install docker.io
sudo systemctl start docker
sudo systemctl enable docker

# Kullaniciyi docker grubuna ekle (sudo'suz calistirmak icin)
sudo usermod -aG docker $USER
# Logout/login yapın
```

#### Temel Kavramlar

- **Image:** Sabit sablonlar (ornek: ubuntu, python, nginx)
- **Container:** Image'den calisan ornekler
- **Dockerfile:** Image olusturma tarifi
- **Docker Hub:** Image depolama platformu

#### Temel Komutlar

```bash
# Image indirme
docker pull ubuntu:latest

# Container calistirma
docker run -it ubuntu:latest bash
docker run -d -p 80:80 nginx  # Detach mode, port mapping

# Calisan container'lari listeleme
docker ps
docker ps -a  # Tum container'lar

# Container durdurma ve silme
docker stop container_id
docker rm container_id

# Image listeleme
docker images

# Image silme
docker rmi image_id

# Container loglarini goruntuleme
docker logs container_id

# Container icine girme
docker exec -it container_id bash
```

#### Dockerfile Ornegi

```dockerfile
# Python uygulamasi icin
FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "app.py"]
```

**Build ve Run:**
```bash
docker build -t myapp:latest .
docker run -p 5000:5000 myapp:latest
```

#### Docker Compose

**Tanim:** Cok-container uygulamalar icin YAML tabanli arac.

**docker-compose.yml Ornegi:**
```yaml
version: '3.8'

services:
  web:
    build: .
    ports:
      - "5000:5000"
    volumes:
      - .:/app
    depends_on:
      - db

  db:
    image: postgres:15
    environment:
      POSTGRES_DB: mydb
      POSTGRES_USER: user
      POSTGRES_PASSWORD: password
    volumes:
      - db-data:/var/lib/postgresql/data

volumes:
  db-data:
```

**Komutlar:**
```bash
# Container'lari baslat
docker-compose up

# Detach mode
docker-compose up -d

# Durdur ve sil
docker-compose down
```

---

### 14. Kubernetes (K8s)

**Link:** https://kubernetes.io/

**Tanim:**
Container orchestration platformu. Buyuk olcekli container yonetimi icin.

**Baslangi c Araclari:**
- **Minikube:** Yerel Kubernetes cluster
- **K3s:** Hafif Kubernetes

**Not:** Ileri seviye, baslangiç icin Docker yeterli.

---

### 15. Vagrant

**Link:** https://www.vagrantup.com/

**Tanim:**
Virtuall machine (VM) yonetimi ve provisioningi.

**Kullanim:**
- Tutarli gelistirme ortamlari
- Docker'a alternatif (tam VM)

---

## Proje Yonetimi ve Isbirligi

### 16. Jira

**Link:** https://www.atlassian.com/software/jira

**Tanim:**
Agile proje yonetimi ve issue tracking.

**Fiyatlandirma:**
- **Ucretsiz:** 10 kullaniciya kadar
- **Ucretli:** $7.75+/kullanici/ay

**Ozellikler:**
- Scrum ve Kanban boards
- Sprint planlama
- Backlog yonetimi
- Entegrasyonlar (Bitbucket, Confluence, Slack)

---

### 17. Trello

**Link:** https://trello.com/

**Tanim:**
Basit Kanban tahtasi proje yonetimi.

**Fiyatlandirma:**
- **Ucretsiz:** Temel ozellikler
- **Ucretli:** $5-10/kullanici/ay

**Kullanim:**
- Gorevleri kartlar halinde
- Listelerde organize etme (To Do, In Progress, Done)
- Etiketler, son tarihler, ekler

---

### 18. Asana

**Link:** https://asana.com/

**Tanim:**
Proje ve gorev yonetimi platformu.

**Fiyatlandirma:**
- **Ucretsiz:** 15 kullaniciiya kadar
- **Ucretli:** $10.99+/kullanici/ay

---

### 19. Notion

**Link:** https://www.notion.so/

**Tanim:**
Hepsi bir arada: not alma, dokumantasyon, proje yonetimi, veritabani.

**Fiyatlandirma:**
- **Ucretsiz:** Bireysel kullanim
- **Plus ($8/kullanici/ay):** Takimlar
- **Notion AI (+$10/kullanici/ay):** AI ozellikleri

**Kullanim:**
- Wiki/dokumantasyon
- Proje roadmap
- Not alma
- Takim veritabani

---

### 20. Slack

**Link:** https://slack.com/

**Tanim:**
Takim iletisim ve isbirligi platformu.

**Fiyatlandirma:**
- **Ucretsiz:** Mesaj gecmisi sinirli
- **Pro ($7.25/kullanici/ay):** Sinirsiz

**Entegrasyonlar:**
- GitHub, Jira, Google Drive, vb. 2000+ uygulama

---

### 21. Microsoft Teams

**Link:** https://www.microsoft.com/en/microsoft-teams/

**Tanim:**
Microsoft'un is iletisim platformu.

**Fiyatlandirma:**
- **Ucretsiz:** Temel ozellikler
- **Microsoft 365 ile:** Gelismis ozellikler

---

### 22. Discord

**Link:** https://discord.com/

**Tanim:**
Oyuncularin acik kaynak projelerin topluluk platformu.

**Fiyatlandirma:** Ucretsiz (Nitro $10/ay opsiyonel premium)

**Kullanim:**
- Topluluk ve ekip iletisimi
- Ses/video kanallar
- Ekran paylasimi

---

## API Gelistirme ve Test

### 23. Postman

**Link:** https://www.postman.com/

**Tanim:**
API gelistirme, test ve dokumantasyon araci.

**Ozellikler:**
- HTTP request gonderme (GET, POST, PUT, DELETE, vb.)
- Collection organize etme
- Test scriptleri yazma
- Otomatik test
- API dokumantasyon olusturma

**Fiyatlandirma:**
- **Ucretsiz:** Temel ozellikler
- **Ucretli:** Takim ozellikleri

**Alternatifler:**
- **Insomnia:** https://insomnia.rest/
- **Thunder Client:** VS Code eklentisi

---

### 24. cURL

**Tanim:**
Komut satiri HTTP istemcisi.

**Kurulum:**
- Linux/macOS: Genellikle yuklu
- Windows: Git Bash veya PowerShell

**Ornek:**
```bash
# GET request
curl https://api.github.com/users/octocat

# POST request (JSON)
curl -X POST https://example.com/api/users \
  -H "Content-Type: application/json" \
  -d '{"name":"John","email":"john@example.com"}'
```

---

### 25. Swagger / OpenAPI

**Link:** https://swagger.io/

**Tanim:**
API specification (OpenAPI) ve dokumantasyon.

**Araclar:**
- **Swagger Editor:** API tanimlama
- **Swagger UI:** Interaktif API dokumantasyonu
- **Swagger Codegen:** Client/server kod olusturma

---

## Veritabani Araclari

### 26. MySQL Workbench

**Link:** https://www.mysql.com/products/workbench/

**Tanim:**
MySQL icin resmi GUI araci.

**Ozellikler:**
- SQL query editoru
- Database tasarimi (ERD)
- Veri import/export

---

### 27. pgAdmin

**Link:** https://www.pgadmin.org/

**Tanim:**
PostgreSQL icin GUI araci.

---

### 28. DBeaver

**Link:** https://dbeaver.io/

**Tanim:**
Universal veritabani araci (MySQL, PostgreSQL, SQLite, Oracle, vb.).

**Fiyatlandirma:**
- **Community (Ucretsiz):** Cogu ozellik
- **Enterprise (Ucretli):** NoSQL, cloud veritabanlari

---

### 29. MongoDB Compass

**Link:** https://www.mongodb.com/products/compass

**Tanim:**
MongoDB icin GUI araci.

---

### 30. TablePlus

**Link:** https://tableplus.com/

**Tanim:**
Modern, native veritabani GUI (macOS, Windows, Linux).

**Fiyatlandirma:**
- **Ucretsiz:** Sinirli ozellikler
- **Lisans ($89):** Tam ozellikler

---

### 31. DataGrip (JetBrains)

**Link:** https://www.jetbrains.com/datagrip/

**Tanim:**
JetBrains'in profesyonel veritabani IDE'si.

**Ogrenci Lisansi:** Ucretsiz

---

## CI/CD Araclari

### 32. GitHub Actions

**Link:** https://github.com/features/actions

**Tanim:**
GitHub'da entegre CI/CD.

**Fiyatlandirma:**
- **Public repo:** Ucretsiz
- **Private repo:** 2000 dakika/ay ucretsiz, sonra ucretli

**Ornek Workflow (.github/workflows/ci.yml):**
```yaml
name: CI

on: [push, pull_request]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Set up Python
        uses: actions/setup-python@v4
        with:
          python-version: '3.11'
      - name: Install dependencies
        run: |
          pip install -r requirements.txt
      - name: Run tests
        run: |
          pytest
```

---

### 33. GitLab CI/CD

**Link:** https://docs.gitlab.com/ee/ci/

**Tanim:**
GitLab'in entegre CI/CD sistemi.

**Fiyatlandirma:** Ucretsiz (GitLab.com'da 400 dakika/ay)

**Ornek (.gitlab-ci.yml):**
```yaml
stages:
  - test
  - deploy

test_job:
  stage: test
  script:
    - pytest

deploy_job:
  stage: deploy
  script:
    - echo "Deploying..."
  only:
    - main
```

---

### 34. Jenkins

**Link:** https://www.jenkins.io/

**Tanim:**
Acik kaynak otomasyon sunucusu.

**Ozellikler:**
- Pipelines
- Eklenti ekosistemi (1800+)
- Self-hosted

**Kullanim:**
- Karmasik build ve deployment senaryolari
- On-premise CI/CD

---

### 35. Travis CI

**Link:** https://www.travis-ci.com/

**Tanim:**
Cloud-tabanli CI/CD, GitHub entegrasyonu.

**Fiyatlandirma:**
- **Acik kaynak:** Ucretsiz
- **Ozel projeler:** Ucretli

**Not:** Son yıllarda GitHub Actions daha populer.

---

### 36. CircleCI

**Link:** https://circleci.com/

**Tanim:**
Cloud CI/CD platformu.

**Fiyatlandirma:**
- **Ucretsiz:** 6000 build dakika/ay (1 container)
- **Ucretli:** Daha fazla kaynak

---

## Diger Faydali Araclar

### 37. npm (Node Package Manager)

**Link:** https://www.npmjs.com/

**Tanim:**
Node.js paket yoneticisi (JavaScript ekosistemi).

**Kurulum:**
- Node.js ile birlikte gelir: https://nodejs.org/

**Temel Komutlar:**
```bash
# Paket kurma
npm install express

# Global kurma
npm install -g nodemon

# package.json'dan kurmaa
npm install

# Script calistirma
npm run dev

# Proje baslatma
npm init
```

---

### 38. pip (Python Package Installer)

**Link:** https://pip.pypa.io/

**Tanim:**
Python paket yoneticisi.

**Kurulum:**
- Python 3.4+ ile birlikte gelir

**Temel Komutlar:**
```bash
# Paket kurma
pip install requests

# requirements.txt'den kurma
pip install -r requirements.txt

# Tum paketleri listeleme
pip list

# Paket guncelleme
pip install --upgrade requests

# Virtual environment
python -m venv venv
source venv/bin/activate  # Linux/Mac
venv\Scripts\activate  # Windows
```

---

### 39. Homebrew (macOS/Linux)

**Link:** https://brew.sh/

**Tanim:**
macOS ve Linux icin paket yoneticisi.

**Kurulum:**
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

**Kullanim:**
```bash
# Paket kurma
brew install git
brew install python
brew install node

# Cask (GUI uygulamalar, macOS)
brew install --cask visual-studio-code
brew install --cask docker

# Guncelleme
brew update
brew upgrade
```

---

### 40. Chocolatey (Windows)

**Link:** https://chocolatey.org/

**Tanim:**
Windows icin paket yoneticisi.

**Kurulum:**
PowerShell (Admin) ile:
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

**Kullanim:**
```powershell
# Paket kurma
choco install git
choco install vscode
choco install python

# Guncelleme
choco upgrade all
```

---

### 41. WSL (Windows Subsystem for Linux)

**Link:** https://learn.microsoft.com/en-us/windows/wsl/

**Tanim:**
Windows'da Linux calistirma ortami.

**Kurulum (Windows 10/11):**
```powershell
# PowerShell (Admin)
wsl --install
```

**Kullanim:**
- Windows'da Linux komutlari
- Linux development tools
- Docker, Git, vb. native Linux deneyimi

---

### 42. Terraform

**Link:** https://www.terraform.io/

**Tanim:**
Infrastructure as Code (IaC) araci. Cloud kaynaklarini kod ile yonetme.

**Kullanim:**
- AWS, Azure, Google Cloud altyapisi
- Reproducible infrastructure

---

### 43. Ansible

**Link:** https://www.ansible.com/

**Tanim:**
IT otomasyon, configuration management, deployment.

**Kullanim:**
- Sunucu yapilandirma
- Uygulama deployment
- Agentless (SSH tabanli)

---

### 44. Figma

**Link:** https://www.figma.com/

**Tanim:**
UI/UX tasarim araci (tarayici tabanli).

**Fiyatlandirma:**
- **Ucretsiz:** Bireysel kullanim, sinirli projeler
- **Ogrenci:** Ucretsiz Professional (egitim e-postasi ile)

**Kullanim:**
- Mockup ve prototype
- Takim isbirligi
- Design system

---

### 45. Miro

**Link:** https://miro.com/

**Tanim:**
Online isbirligi tahtasi (whiteboard).

**Kullanim:**
- Beyin firtinasi
- Flowchart, diagram
- Agile boards

---

### 46. Draw.io (diagrams.net)

**Link:** https://app.diagrams.net/

**Tanim:**
Ucretsiz diagram ve flowchart araci.

**Fiyatlandirma:** Tamamen ucretsiz

**Kullanim:**
- Flowchart
- UML diagram
- Network diagram

---

### 47. Ngrok

**Link:** https://ngrok.com/

**Tanim:**
Yerel servisleri internete acma (tunneling).

**Kullanim:**
- Webhook testi
- Mobil uygulama ile yerel backend test
- Hizli paylasim

**Ornek:**
```bash
ngrok http 3000
# Geenel bir URL verir (ornek: https://abc123.ngrok.io)
```

---

### 48. Regex101

**Link:** https://regex101.com/

**Tanim:**
Online regex test ve debugging araci.

**Kullanim:**
- Regular expression yazma ve test
- Aciklama ve kaydetme

---

### 49. JSONPlaceholder

**Link:** https://jsonplaceholder.typicode.com/

**Tanim:**
Fake REST API (test icin).

**Kullanim:**
- Frontend gelistirirken backend olmadan test
- API call pratik

---

### 50. Carbon

**Link:** https://carbon.now.sh/

**Tanim:**
Kod screenshot olusturma (guzel gorunum).

**Kullanim:**
- Sunumlara kod ekleme
- Sosyal medya paylasimi

---

## Ogrenim Yolu ve Ipuclari

### Yeni Baslayanlar İcin

1. **Git ve GitHub:** İlk oncelik, versiyon kontrolu ogren
2. **VS Code:** Hafif ve guclu editor
3. **Terminal:** Komut satiri temelleri (ls, cd, mkdir, vb.)
4. **Python/JavaScript:** Bir dilden basla, pip/npm ogren

### Orta Seviye

1. **Docker:** Container teknolojisi
2. **API Araclari:** Postman ile API test
3. **CI/CD:** GitHub Actions ile otomasyon
4. **Veritabani Araclari:** SQL ve NoSQL yonetimi

### İleri Seviye

1. **Kubernetes:** Container orchestration
2. **IaC:** Terraform, Ansible
3. **Monitoring:** Prometheus, Grafana
4. **Cloud Platforms:** AWS, Azure, GCP

---

## En Iyi Uygulamalar

### Gelistirme Ortami

1. **Version Control Kullan:** Her proje Git ile
2. **README Yaz:** Proje kurulum ve kullanim dokumante et
3. **.gitignore Kullan:** Gereksiz dosyalari commit'leme
4. **Virtual Environment:** Python projelerde venv kullan
5. **Linter ve Formatter:** Kod kalitesi (ESLint, Prettier, Black)

### Kod Kalitesi

1. **Code Review:** Pull request sur eci
2. **Automated Tests:** Birim ve entegrasyon testleri
3. **CI/CD:** Otomatik build ve test
4. **Dokumantasyon:** Kod icerisinde ve README

### Guvenlik

1. **Sifreleri Gizle:** .env dosyasi, .gitignore'a ekle
2. **Dependencies Guncelle:** npm audit, pip check
3. **HTTPS Kullan:** Production'da SSL/TLS

---

## Sonuc

Gelistirme araclari, yazilim surecini hizlandirir, hatalari azaltir ve isbirligini kolaylastirir. Dogru araclari ogrenm ek ve kullanmak, profesyonel bir gelistirici olmanin temelidir.

**Anahtar Noktalar:**

- **Git:** Mutlaka ogren, her projede kullan
- **IDE/Editor:** VS Code baslangiç icin ideal
- **Docker:** Modern gelistirme standardi
- **CI/CD:** Otomasyonu ogran
- **Dokumantasyon:** README, comment, wiki
- **Surekli Ogrenme:** Yeni araclar ve best practices takip et

**Basarilar dileriz!**

---

*Son Guncelleme: 2025*
*Not: Arac linkleri ve ozellikleri degisebilir. Guncel bilgi icin resmi web sitelerini ziyaret ediniz.*
