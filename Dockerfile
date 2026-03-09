FROM soulter/astrbot:latest
WORKDIR /AstrBot

RUN apt-get update && apt-get install -y --no-install-recommends \
    libgl1 libglib2.0-0 

EXPOSE 6185

CMD ["python", "main.py"]