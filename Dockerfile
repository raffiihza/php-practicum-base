FROM raffiihza/docker-laravel

WORKDIR /usr/app
COPY . .
COPY apache-config.conf /etc/apache2/sites-available/000-default.conf
RUN a2enmod proxy && a2enmod proxy_http && a2enmod rewrite
RUN if [ -d "modul5" ] && [ -f "modul5/composer.json" ]; then \
    cd modul5 && composer install && npm install && npm run build && cd ..; \
    fi

RUN mkdir -p /usr/app/modul5/storage /usr/app/modul5/bootstrap/cache && \
    chmod -R 777 /usr/app/modul5/storage /usr/app/modul5/bootstrap/cache

EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]