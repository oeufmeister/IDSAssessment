FROM php:8.2-apache
# menggunakan image docker apache sebagai dasar

COPY index.php  /var/www/html/
# memindahkan index.php kedalam folder default apache

EXPOSE 80
# expose port 80

CMD ["apache2-foreground"]
# menjalankan apache di foreground
