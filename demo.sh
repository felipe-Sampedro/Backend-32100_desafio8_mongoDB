# mongoDB - Desafio 8

#Crear base de datos "ecommerce"

use ecommerce

# Punto 1 - crear coleccion "mensajes", "productos" y agregar 10 documentos en cada uno

db.createColletion('mensajes')
db.createColletion('productos')

db.productos.insertMany([
    {}

])

