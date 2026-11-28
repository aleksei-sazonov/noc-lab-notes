**Docker: Сборка своего образа**
1. Создана папка `~/my-website`.
2. Написан `Dockerfile`:
   FROM nginx:latest
   COPY index.html /usr/share/nginx/html/index.html
   EXPOSE 80
3. Собран образ: `docker build -t my-website:v1 .`
4. Запущен контейнер: `docker run -d -p 8081:80 --name my-site my-website:v1`
5. Проверка: `http://192.168.1.79:8081` работает.
