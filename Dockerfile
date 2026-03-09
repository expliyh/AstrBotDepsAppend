FROM soulter/astrbot:latest
WORKDIR /AstrBot

RUN apt-get update && apt-get install -y --no-install-recommends \
    libgl1 libglib2.0-0 \
    libegl1-mesa libgles2-mesa libgl1-mesa-dev \
    wkhtmltopdf

EXPOSE 6185

CMD ["python", "main.py"]