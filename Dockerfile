FROM registry.altlinux.org/sisyphus/base:latest AS altbase

# Копируем скрипты
COPY src /src

# Устанавливаем переменные окружения
ARG PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:/usr/lib/pkgconfig"
ARG PATH="/root/.cargo/bin:${PATH}"

# Выполняем все шаги в одном RUN для минимизации слоёв
#RUN --mount=type=bind,source=./src,target=/src \
#    /src/main.sh

WORKDIR /src

# Выполняем все шаги в одном RUN для минимизации слоёв
RUN ./main.sh

# Стадия 2: Переход к пустому образу
FROM scratch

# Копируем всё содержимое из предыдущего образа
COPY --from=altbase / /

WORKDIR /

# Помечаем образ как bootc совместимый
LABEL containers.bootc=1

CMD ["/sbin/init"]
