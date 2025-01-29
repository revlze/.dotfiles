#!/bin/bash

# Команда для проверки подключенного второго монитора
SECOND_MONITOR_CHECK="hyprctl monitors all | grep -sw 'DP-2' | wc -l"

# Проверка состояния второго монитора
SECOND_MONITOR_CONNECTED=$(eval $SECOND_MONITOR_CHECK)

if [ "$SECOND_MONITOR_CONNECTED" -eq 1 ]; then
    # Если второй монитор подключен, отключаем экран ноутбука
    hyprctl keyword monitor eDP-1, disable

    # Если второй монитор не подключен, ничего не делаем
fi

