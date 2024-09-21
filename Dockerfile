FROM debian:bullseye

# Обновление системы и установка зависимостей
RUN apt-get update && apt-get install -y apache2 php7.4 php7.4-mysql libapache2-mod-php7.4 && apt-get clean && rm -rf /var/lib/apt/lists/*


# Установка и настройка Apache
RUN a2enmod rewrite

# Назначение рабочего каталога
WORKDIR /var/www/html

# Прослушивание порта 80
EXPOSE 80

# Запуск Apache
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
