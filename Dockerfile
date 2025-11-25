# Dockerfile (minimal)
FROM python:3.11

# Install Django (keep as you had it)
RUN pip install django==3.2

WORKDIR /app
COPY . /app

# Run migrations at build time (fragile but kept as-is)
RUN python manage.py migrate

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
