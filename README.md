# Symfony Docker Development Environment

A Docker-based development environment for Symfony applications.

## Prerequisites

- Docker
- Docker Compose

## Configuration
### Environment Variables
- APP_ENV : Set to dev for development environment
- APP_DEBUG : Set to 1 for debug mode
- SYMFONY_TYPE : Choose between webapp (full-featured) or standard installation
### Ports
- Symfony application: http://localhost:8000
- MySQL database: localhost:3306
### Database Credentials
- Database: symfony
- Username: symfony
- Password: symfony
- Root Password: root