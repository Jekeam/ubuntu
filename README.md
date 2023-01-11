# Операции с файлами

## Cамые большие каталоги
```du -hs * | sort -rh | head -10```

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


