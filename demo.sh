# mongoDB - Desafio 8

#Crear base de datos "ecommerce"

use ecommerce

# Punto 1 y 2 - crear coleccion "mensajes", "productos" y agregar 10 documentos en cada uno con valores especificos

db.createColletion('mensajes')
db.createColletion('productos')

db.mensajes.insertMany([
    {id:1,username:'camilo@gmail.com',time:'01/11/2022 16:24 p.m.',text:'hola, ¿alguien recomieda algo bueno?'},
    {id:2,username:'andres@gmail.com',time:'01/11/2022 16:24 p.m.',text:"jajaja todo es bueno en esta tienda"},
    {id:3,username:'sebastian@gmail.com',time:'01/11/2022 16:28 p.m.',text:"el problema es que uno se antoja de todo"},
    {id:4,username:'andres@gmail.com',time:'01/11/2022 16:43 p.m.',text:"claro, y no hay suficiente dinero"},
    {id:5,username:'chat-bot@sport.com',time:'01/11/2022 18:52 p.m.',text:"tenemos excelente promociones y ventas a credito"},
    {id:6,username:'daniel@gmail.com',time:'01/11/2022 21:02 p.m.',text:"uyy! que acabo de leer"},
    {id:7,username:'sebastian@gmail.com',time:'01/11/2022 23:33 p.m.',text:"callate y toma mi dinero!!"},
    {id:8,username:'salome@gmail.com',time:'02/11/2022 02:14 a.m.',text:"¿hay otras formas de pado?, por ejemplo mi riñon"},
    {id:9,username:'maria@gmail.com',time:'02/11/2022 04:59 a.m.',text:"siiii, ór ejmplo yo podria modelar los productos"},
    {id:10,username:'chat-bot@gmail.com',time:'02/11/2022 06:07 a.m.',text:'NO!! ¬¬'}
])

db.productos.insertMany([
    {id:1,nombre:'camiseta',precio:1700,imagen:'https://www.texor.co/wp-content/uploads/2019/11/T-SHIRT-BLANCA.jpg'},
    {id:2,nombre:'pantaloneta',precio:2300,imagen:'https://oto.com.co/wp-content/uploads/2022/06/pantaloneta-elastica-azul.png'},
    {id:3,nombre:'sudadera',precio:2860,imagen:'https://almacenessi.vteximg.com.br/arquivos/ids/182887-550-550/uniforme-sudadera-41462-7938-azulturqui_1.jpg?v=636976845226870000'},
    {id:4,nombre:'gorra',precio:1280,imagen:'https://cf.shopee.com.co/file/1517f05ca5dd40b8beeb906d10aa4756'},
    {id:5,nombre:'medias',precio:580,imagen:'https://assets.adidas.com/images/w_600,f_auto,q_auto/00bf8199e559467f8731ada1002bf0e5_9366/Medias_Deportivas_Malla_Estampadas_Largo_a_Media_Pantorrilla_Blanco_HA0110_03_standard.jpg'},
    {id:6,nombre:'tennis',precio:4320,imagen:'https://i.pinimg.com/originals/07/41/05/0741053592fe18eb88987c48e7348f97.png'},
    {id:7,nombre:'guantes',precio:900,imagen:'https://i.linio.com/p/d9276e5ee7d8d71ed8416d7c13647b0c-catalog.jpg'},
    {id:8,nombre:'guayos',precio:3350,imagen:'http://www.arizon.com.co/wp-content/uploads/2021/11/Tenis-Guallos-naranjas-3-min.webp'},
    {id:9,nombre:'bandas',precio:120,imagen:'https://images-na.ssl-images-amazon.com/images/I/61xTA6Mb65L._AC_UL210_SR210,210_.jpg'},
    {id:10,nombre:'reloj deportivo',precio:4990,imagen:'https://cdnx.jumpseller.com/urbenmood/image/6069881/PS3220_Reloj_Deportivo_Hombre_Digital_LED_SKMEI_1426_Negro.png?1662923254'}
])


#punto 3 - listar los documentos en cada coleccion

db.mensajes.find()

db.productos.find()


# punto 4 - mostrar la cantidad de documentos en cada una de ellas

db.mensajes.countDocuments()

db.productos.countDocuments()

# punto 5 - CRUD sobre la colleccion de productos

    # a) agregar un producto mas a la coleccion
    db.productos.insertOne({id:11,nombre:'gafas',precio:2150,imagen:'https://cf.shopee.com.co/file/f561eb8df93b8a4a0471a75e1d5e35cd'})

    # b) realizar una consulta con por nombre de producto especifico
    db.productos.find({nombre:'camiseta'})

        # i) listar los productos con precio menos a 1000
        db.productos.find({precio:{$lt:1000}})

        # ii) listar los productos con prpecio entre 1000 a 3000
        db.productos.find({$and{{precio:{$gt:1000}},{precio:{$lt:3000}}})

        #iii) listar los productos con prpecio mayot a 3000 
        db.productos.find({precio:{$gt:3000}})

        #iv) Traer solo el 3r producto mas barato
        db.productos.find().sort(1).skip(2)


    # c) hacer una actaulizacion agregando el campo stock con valor de 100
    db.productos.updateMany()

    # d) cambiar el stock a cero de los productos con precio mayor a 4000 pesos
    db.productos.updateMany()

    # e) borrar los productos con precio menor a 1000
    db.productos.deleteMany()


# punto 6 - crear un usuario 'pepe' con clave 'asd456' que solo pueda leer la informacion - verificar que no pueda editar la info 