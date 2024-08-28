FROM python:3.12-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir pipenv && \
    pipenv install --system --deploy

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
