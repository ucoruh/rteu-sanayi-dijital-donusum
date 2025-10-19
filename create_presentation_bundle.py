#!/usr/bin/env python3
"""
RTEÜ Workshop Sunum Paketi Oluşturucu
- PowerPoint (düzgün isimle)
- MkDocs Material Markdown
- Marp Markdown + HTML
"""

import os
import sys

# Sunum bilgileri
PRESENTATION_INFO = {
    'title': 'RTEÜ Sanayi 4.0 ve Dijital Dönüşüm Workshop',
    'subtitle': 'AI Araçlarıyla Fikirden Ürüne',
    'date': '19 Ekim 2025',
    'time': '10:00-12:00',
    'speaker': 'Dr. Öğr. Üyesi Uğur CORUH',
    'slides': 62
}

# Dosya isimleri
FILES = {
    'pptx': 'rteu-sanayi40-dijital-donusum-workshop-2025.pptx',
    'mkdocs_md': 'docs/presentation/slides.md',
    'marp_md': 'docs/presentation/slides.marp.md',
    'marp_html': 'docs/presentation/slides.html'
}

print("🚀 RTEÜ Workshop Sunum Paketi Oluşturucu")
print("=" * 60)
print(f"✓ PowerPoint: {FILES['pptx']}")
print(f"✓ MkDocs MD: {FILES['mkdocs_md']}")
print(f"✓ Marp MD: {FILES['marp_md']}")
print(f"✓ Marp HTML: {FILES['marp_html']}")
print("=" * 60)
print("\n⏳ İşlem başlıyor...")
print("\n1️⃣ Eski rteu_ultimate_presentation.py çalıştırılacak")
print("2️⃣ Dosya ismi değiştirilecek")
print("3️⃣ Markdown dosyaları oluşturulacak")
print("4️⃣ Linkler güncellenecek")
