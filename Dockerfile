FROM python:3.11-slim-bookworm

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir flask ldap3 gunicorn

EXPOSE 443

CMD ["gunicorn", "--bind", "0.0.0.0:443", "app:app"]
``
