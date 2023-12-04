# API
Testing API via terminal
Тестирование API через командную строку/терминал
GET запрос
curl https://simple-books-api.glitch.me - getting response from remote server
curl -I https://simple-books-api.glitch.me - getting response with method type and status code from server
POST request
curl -X POST https://simple-books-api.glitch.me/api-clients -H 'Content-Type: application/json' -d '{"clientName": "Roman","clientEmail": "Roman@postman.com"}'
-X указываем метод запроса (POST)
-d передаваемые данные
curl -X POST https://lms.ithillel.ua/api/lms/users/login -H 'Content-Type: application/json' -d '{"email": "your_email","password": "your_password"}' - отправляем данным на сервер для получения токена
PATCH - изменение какого либо объекта в существующей сущности
curl -H 'Authorization: Bearer 5dc3e9a5c28f4310753b7cd5f0be2ef8cae50c2a45f612185a1010c08f514747' -X PATCH https://simple-books-api.glitch.me/orders/GksFsZkhJIEn3fAaKWgmE -H 'Content-Type: application/json' -d '{"customerName": "Roman Roman"}'
DELETE - удаление сущности, в данном случае заказа, зная id заказа и имея токен авторизации
curl -H 'Authorization: Bearer 5dc3e9a5c28f4310753b7cd5f0be2ef8cae50c2a45f612185a1010c08f514747' -X DELETE https://simple-books-api.glitch.me/orders/kfsP0UIrgL1AFkbGtMG_N
