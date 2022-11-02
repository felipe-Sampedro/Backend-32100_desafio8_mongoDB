# mongoDB - Desafio 8

#Crear base de datos "ecommerce"

use ecommerce

# Punto 1 y 2 - crear coleccion "mensajes", "productos" y agregar 10 documentos en cada uno con valores especificos

db.createColletion('mensajes')
db.createColletion('productos')

db.mensajes.insertMany([
    {id:1,username:'camilo@gmail.com',time:'01/11/2022 16:24 p.m.',text:'hola, ¿alguien recomieda algo bueno?'}
    {id:2,username:'andres@gmail.com',time:'01/11/2022 16:24 p.m.',text:"jajaja todo es bueno en esta tienda"}
    {id:3,username:'sebastian@gmail.com',time:'01/11/2022 16:28 p.m.',text:"el problema es que uno se antoja de todo"}
    {id:4,username:'andres@gmail.com',time:'01/11/2022 16:43 p.m.',text:"claro, y no hay suficiente dinero"}
    {id:5,username:'chat-bot@sport.com',time:'01/11/2022 18:52 p.m.',text:"tenemos excelente promociones y ventas a credito"}
    {id:6,username:'daniel@gmail.com',time:'01/11/2022 21:02 p.m.',text:"uyy! que acabo de leer"}
    {id:7,username:'sebastian@gmail.com',time:'01/11/2022 23:33 p.m.',text:"callate y toma mi dinero!!"}
    {id:8,username:'salome@gmail.com',time:'02/11/2022 02:14 a.m.',text:"¿hay otras formas de pado?, por ejemplo mi riñon"}
    {id:9,username:'maria@gmail.com',time:'02/11/2022 04:59 a.m.',text:"siiii, ór ejmplo yo podria modelar los productos"}
    {id:10,username:'chat-bot@gmail.com',time:'02/11/2022 06:07 a.m.',text:'NO!! ¬¬'}
])

db.productos.insertMany([
    {id:1,nombre:'camiseta',precio:1700,imagen:}
    {id:2,nombre:'pantaloneta',precio:2300,imagen:}
    {id:3,nombre:'sudadera',precio:2860,imagen:}
    {id:4,nombre:'gorra',precio:1280,imagen:}
    {id:5,nombre:'medias',precio:580,imagen:}
    {id:6,nombre:'tennis',precio:4320,imagen:}
    {id:7,nombre:'guantes',precio:900,imagen:}
    {id:8,nombre:'guayos',precio:3350,imagen:}
    {id:9,nombre:'bandas',precio:120,imagen:}
    {id:10,nombre:'reloj deportivo',precio:4990,imagen:}
])


#punto 3 - listar los documentos en cada coleccion

