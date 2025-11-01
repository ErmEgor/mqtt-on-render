# Используем официальный образ Mosquitto
FROM eclipse-mosquitto:latest

# Копируем наш файл конфигурации внутрь контейнера
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Указываем, что контейнер будет слушать на двух портах
# 1883 для обычного MQTT, 9001 для MQTT через WebSockets
EXPOSE 1883
EXPOSE 9001
