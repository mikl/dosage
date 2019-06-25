FROM python:3.7
RUN mkdir -p /srv/dosage
WORKDIR /srv/dosage
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --user dosage
ENV PYTHONUNBUFFERED 1
