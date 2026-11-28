# Конспект День 3 (23.11.2026) — systemd и логи

**Что сделано:**
1. Проверил выживаемость сервисов: Nginx (80), Prometheus (9090), Node Exporter (9100), Grafana (3000) — все работали после перезапуска сессии.
2. Превратил Node Exporter в службу systemd:
   - Создан файл `/etc/systemd/system/node_exporter.service`.
   - Выполнены: `systemctl daemon-reload`, `start`, `enable`.
   - Проверка: `systemctl status node_exporter` показывает `active (running)`.
3. Научился читать логи Nginx:
   - `tail -n 10 /var/log/nginx/access.log` — последние запросы.
   - `tail -f /var/log/nginx/access.log` — режим реального времени.
   - Разобрал формат лога: IP, дата, метод (GET), код ответа (200, 304), размер, User-Agent.
   - Понял, что `304 Not Modified` означает кэширование страницы браузером.
