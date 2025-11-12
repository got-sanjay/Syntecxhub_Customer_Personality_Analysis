FROM python:3.12.9-slim
WORKDIR /app
COPY . .
RUN python -m venv /app/NumVenv \
&& /app/NumVenv/bin/pip install --upgrade pip \
&& /app/NumVenv/bin/pip install --no-cache-dir -r requirements.txt

ENV PATH = "/app/NumVenv/bin:$PATH"
