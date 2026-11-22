# Конспект День 2 (22.11.2026) — Визуализация (Grafana)

**Что сделано:**
1. Установлена Grafana (v11.1.4).
2. Запущена в фоне: `./bin/grafana-server > grafana.log 2>&1 &`.
3. Открыт порт 3000 в UFW: `sudo ufw allow 3000/tcp`.
4. Подключен источник данных Prometheus (URL: `http://localhost:9090`).
5. Импортирован официальный дашборд для Node Exporter (ID: 1860).

**Результат:**
Собран полный стек мониторинга:
Node Exporter (9100) -> Prometheus (9090) -> Grafana (3000).
Дашборд показывает CPU, RAM, SWAP, диск и сетевой трафик.
