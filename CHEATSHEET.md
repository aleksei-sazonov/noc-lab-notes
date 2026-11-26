# Шпаргалка NOC-инженера (Cheat Sheet)

## 🛠️ Диагностика сети
*   `ip a` — показать IP-адреса.
*   `ip route get 8.8.8.8` — показать, через какой интерфейс пойдет трафик.
*   `ping 8.8.8.8` — проверить связь (L3).
*   `ss -tlnp` — показать, какие порты слушаются (L4).
*   `nc -zv <IP> <порт>` — проверить, открыт ли порт снаружи (L4).
*   `curl -I http://...` — проверить HTTP-ответ (L7).

## 🛡️ Если сломался DNS (Temporary failure in name resolution)
1. `resolvectl status` — посмотреть, какой DNS используется.
2. Если VPN перехватил DNS: `sudo resolvectl dns <интерфейс> ""`
3. Задать DNS вручную: `sudo resolvectl dns wlp3s0 8.8.8.8`
4. Перезапустить: `sudo systemctl restart systemd-resolved`

## ⚙️ Управление службами (systemd)
*   `systemctl status <имя>` — проверить статус.
*   `sudo systemctl start <имя>` — запустить.
*   `sudo systemctl enable <имя>` — добавить в автозагрузку.
*   `journalctl -u <имя>` — посмотреть логи службы.
*   `sudo systemctl daemon-reload` — применить новый конфиг службы.

## 📁 Полезные команды
*   `tail -n 10 <файл>` — последние 10 строк файла.
*   `tail -f <файл>` — смотреть файл в реальном времени (Ctrl+C для выхода).
*   `grep "слово" <файл>` — найти слово в файле.
*   `pkill <имя>` — убить процесс по имени.
