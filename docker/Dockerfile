FROM kalilinux/kali-rolling

# Install system dependencies
RUN apt-get update && apt-get install -y \
    php \
    php-cli \
    php-fpm \
    php-intl \
    php-zip \
    php-xml \
    php-mbstring \
    php-mysql \
    php-curl \
    git \
    unzip \
    wget

# Install Symfony CLI
RUN curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.deb.sh' | bash && \
    apt-get install symfony-cli

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /app

# Copy entrypoint script
COPY docker/docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

# Create a non-root user
RUN useradd -m symfony && \
    mkdir -p /app && \
    chown -R symfony:symfony /app
USER symfony

# Expose port for Symfony server
EXPOSE 8000

# Use the entrypoint script
CMD ["/usr/local/bin/docker-entrypoint.sh"]