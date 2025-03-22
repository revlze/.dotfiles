#!/bin/bash

# Команда для проверки подключенного второго монитора
SECOND_MONITOR_CHECK="hyprctl monitors all | grep -sw 'DP-2' | wc -l"

# Проверка состояния второго монитора
SECOND_MONITOR_CONNECTED=$(eval $SECOND_MONITOR_CHECK)

if [ "$SECOND_MONITOR_CONNECTED" -eq 1 ]; then
    # Если второй монитор подключен, отключаем экран ноутбука
    hyprctl keyword monitor DP-2, 2560x1440@143.98, 0x0, 1
    sleep 2
    hyprctl keyword monitor eDP-1, disable

else
    hyprctl keyword monitor eDP-1, 1920x1080@144, 0x0, 1
fi

