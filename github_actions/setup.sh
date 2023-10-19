#!/bin/sh

# Collect static files
echo "Collect static files: manage.py collectstatic --noinput"
python manage.py collectstatic --noinput

# Apply database migrations
echo "Apply database migrations: manage.py migrate"
python manage.py migrate

# Start server
echo "Starting server: manage.py runserver 0.0.0.0:8000"
python manage.py runserver 0.0.0.0:8000