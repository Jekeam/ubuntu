# Операции с файлами

## Cамые большие каталоги
```du -hs * | sort -rh | head -10```

## Откат гугл хром
[[stackexchange]([https://unix.stackexchange.com/questions/233185/install-older-versions-of-google-chrome-stable-on-ubuntu-14-10)
https://www.ubuntuupdates.org/package/google_chrome/stable/main/base/google-chrome-stable](https://unix.stackexchange.com/questions/233185/install-older-versions-of-google-chrome-stable-on-ubuntu-14-10)](https://unix.stackexchange.com/questions/233185/install-older-versions-of-google-chrome-stable-on-ubuntu-14-10)
wget https://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_108.0.5359.124-1_amd64.debudo 
sudo dpkg -i google-chrome-stable_108.0.5359.124-1_amd64.deb

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


