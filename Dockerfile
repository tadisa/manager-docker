FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    wget gnupg \
    libx11-6 libxcomposite1 libxrandr2 libxdamage1 libgtk-3-0 \
    libnss3 libasound2 libxss1 libxtst6 \
    fonts-liberation libgbm1 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . /app

EXPOSE 8080

CMD ["dotnet", "ManagerServer.dll"]
