#Linux: 1. Установка JDK

# Во-первых, обновим индекс пакетов.
sudo apt-get update

# Далее, установим Java. В частности, эта команда устанавливает среду выполнения Java (JDK - Java Development Kit).
sudo apt-get install default-jdk

javac –version
# Output
# javac 1.8.0_xxx
# Далее следует установить переменную среды JAVA_HOME.

# JAVA_HOME
sudo update-alternatives --config java
# Скопируйте путь из предпочтительной установки, а затем откройте /etc/environment с помощью nano или другой ваш любимый текстовый редактор.
sudo nano /etc/environment
# or 
sudo vi /etc/environment
# В этот файл добавьте следующую строку, чтобы заменить выделенный путь с вашей собственной скопированный строкой пути
# JAVA_HOME="/usr/lib/jvm/java-8-oracle"

# RELOAD PROP
source /etc/environment
# echo $JAVA_HOME
