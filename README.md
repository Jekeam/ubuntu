# Операции с файлами

## Cамые большие каталоги и файлы
Каталоги ```cd / && sudo du -hs * | sort -rh | head -10``` 

или

```sudo du -sch /* |grep G```



Файлы ```sudo find / -type f -exec du -h {} + | sort -rh | head -n 10```

или

```find / -mount -type f -ls 2> /dev/null | sort -rnk7 | head -10 | awk '{printf "%10d MB\t%s\n", ($7/1024)/1024,$NF}'```

## Откат гугл хром
[stackexchange](https://unix.stackexchange.com/questions/233185/install-older-versions-of-google-chrome-stable-on-ubuntu-14-10)

`wget https://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_108.0.5359.124-1_amd64.deb`
`sudo dpkg -i google-chrome-stable_108.0.5359.124-1_amd64.deb`

## Для очистки места на диске можно использовать несколько команд в терминале:

Очистка кэша APT: `sudo apt-get clean`

Удаление ненужных пакетов: `sudo apt-get autoremove`

Очистка лог-файлов: `sudo find /var/log -type f -delete`

Очистка временных файлов: `sudo rm -rf /tmp/*`

После выполнения этих команд можно проверить свободное место на диске с помощью команды `df -h`

## React App
Полезное видео: https://www.youtube.com/watch?v=Qu-oyzWIpjI

Для установки всех зависимостей: ```npm install```

Если хотите запустить локально: ```npm run serve```

Чтобы собрать билд: ```npm run build```

Поднять сервер:
```
const express = require('express');
const app = express();
const path = require('path');
app.use(express.static(path.join(__dirname, 'build')));
app.get('/', function (req, res) {
    res.sendFile(path.join(__dirname, 'build', 'index.html'))
});
app.listen(3000, () => {
   console.log("server is r  unnig on port 3000");
   console.log("Open your browser and hit url 'localhost:3000'");
});
```
```pm2 start server.js```


