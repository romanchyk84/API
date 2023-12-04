#!/bin/bash
pwd
cd c:/Users/Pavilion/Documents/
mkdir API
rm -f books.json
cd API
#touch books.json
cat <<EOF > books.json
$(curl -H "Authorization: Bearer 5dc3e9a5c28f4310753b7cd5f0be2ef8cae50c2a45f612185a1010c08f514747" https://simple-books-api.glitch.me/books)
EOF
cat << EOF >> books.json
$(curl -H "Authorization: Bearer 5dc3e9a5c28f4310753b7cd5f0be2ef8cae50c2a45f612185a1010c08f514747" https://simple-books-api.glitch.me/orders)
EOF
echo "FINISH"

 #curl -X POST https://simple-books-api.glitch.me/api-clients -H 'Content-Type: application/json' -d '{"clientName": "Roman","clientEmail": "Roman@postman.com"}'
 #curl -H 'Authorization: Bearer 5dc3e9a5c28f4310753b7cd5f0be2ef8cae50c2a45f612185a1010c08f514747' -X PATCH https://simple-books-api.glitch.me/orders/GksFsZkhJIEn3fAaKWgmE -H 'Content-Type: application/json' -d '{"customerName": "Roman Roman"}'
 #curl -H 'Authorization: Bearer 5dc3e9a5c28f4310753b7cd5f0be2ef8cae50c2a45f612185a1010c08f514747' -X DELETE https://simple-books-api.glitch.me/orders/kfsP0UIrgL1AFkbGtMG_N
