#!/bin/bash
set -e

echo "[+] Переходим в директорию проекта"
cd ~/flask-ci-demo || exit 1

echo "[+] Собираем Docker-образ"
docker build -t flaskapp .

echo "[+] Останавливаем старый контейнер (если он есть)"
docker rm -f flaskapp 2>/dev/null || true

echo "[+] Запускаем новый контейнер на порту 8080"
docker run -d --name flaskapp -p 8080:8080 flaskapp

echo "[✓] Приложение задеплоено и работает на порту 8080"
