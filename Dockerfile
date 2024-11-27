FROM python:3.10.10

RUN mkdir -p /app

WORKDIR /app

COPY requirements.txt .

RUN pip3 install --upgrade pip

RUN pip3 install --no-cache-dir -r requirements.txt

COPY ./app /app

EXPOSE 8000

RUN chown -R 4000:4000 /app && chmod -R g+w /app

USER 4000

CMD ["uvicorn", "api:app", "--host", "0.0.0.0", "--port", "8000"]