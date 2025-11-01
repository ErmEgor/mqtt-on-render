# Используем официальный образ Mosquitto
FROM eclipse-mosquitto:latest

# Копируем наш файл конфигурации внутрь контейнера
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Оставляем ТОЛЬКО порт для WebSockets, чтобы Render видел его
EXPOSE 9001
