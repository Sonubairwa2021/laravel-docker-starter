# 🚀 Laravel Docker Starter

This is a complete Laravel development environment using **Docker**, including:

- PHP 8.2 (with Laravel)
- NGINX Web Server
- MySQL 8
- phpMyAdmin for MySQL GUI

---

## 🧰 Requirements

Before starting, make sure your machine has:

- ✅ Docker Desktop: https://www.docker.com/products/docker-desktop
- ✅ Composer: https://getcomposer.org/

---

## 📦 Folder Structure

laravel-docker-starter/

 ├── Dockerfile                 # PHP image with extensions

 ├── docker-compose.yml         # Docker container setup

 ├── docker/nginx/default.conf  # NGINX config

 ├── laravel/                   # Laravel application files

---

## 🔧 Setup Instructions

### 1. Clone or download the project

git clone https://github.com/sohan/laravel-docker-starter.git
cd laravel-docker-starter

---

### 2. Create Laravel app (if not already present)

composer create-project laravel/laravel laravel

---

### 3. Add local domain (macOS / Windows / Linux)

#### 🖥 macOS / Linux

Edit your hosts file:

```bash
sudo nano /etc/hosts
```

Add this line at the end:

```
127.0.0.1 myapp.local
```

#### 🪟 Windows

Edit `C:\Windows\System32\drivers\etc\hosts` using Notepad **as Administrator**.

Add this line:

```
127.0.0.1 myapp.local
```

---

### 4. Start Docker containers

docker-compose up -d

This starts:

- Laravel App
- MySQL DB
- NGINX Web Server
- phpMyAdmin GUI

---

## 🌐 Access the App

Laravel App: http://myapp.local  
phpMyAdmin : http://localhost:8080

### phpMyAdmin Credentials

Server  : mysql_db  
Username: laravel  
Password: laravel123

---

## ⚙️ Laravel .env Example

Make sure your `.env` file in `laravel/.env` includes:

DB_CONNECTION=mysql  
DB_HOST=mysql_db  
DB_PORT=3306  
DB_DATABASE=laravel_db  
DB_USERNAME=laravel  
DB_PASSWORD=laravel123

---

## 🐳 Common Docker Commands

docker-compose up -d              # Start all containers  
docker-compose down               # Stop all containers  
docker-compose build              # Rebuild containers  
docker exec -it laravel_app bash  # Access Laravel container

---

## 🧪 Laravel Commands

docker exec -it laravel_app bash  
cd /var/www  
php artisan migrate  
php artisan key:generate

---

## 🎉 You're All Set!

Your Laravel app is now running in Docker with:

- PHP 8.2
- MySQL
- NGINX
- phpMyAdmin
- CLI access to Laravel

---

Happy coding! 💻🐳🔥
