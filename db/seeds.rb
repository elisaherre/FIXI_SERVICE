require "open-uri"

if Rails.env.development?
  Review.destroy_all
  Request.destroy_all
  Service.destroy_all
  Category.destroy_all
  User.destroy_all
end

# CATEGORÍAS

puts "creando categoría 1..."
file = URI.open("https://img.freepik.com/foto-gratis/persona-tomando-medidas-sobre-madera_23-2148748799.jpg?w=1800&t=st=1694300847~exp=1694301447~hmac=728a1f182d33d8e46c991a8a1f9ad68e8d78974561ff1c61b1194ff33e508d93")
category1 = Category.new(name: "carpintería")
category1.photo.attach(io: file, filename: "carpintería.png", content_type: "image/png")
category1.save!

puts "creando categoría 2..."
file = URI.open("https://img.freepik.com/foto-gratis/servicio-reparacion-fontaneria_181624-27146.jpg?w=1800&t=st=1694301265~exp=1694301865~hmac=f930d20ccea2ba59923013dd57a1e268f3a8a3bb91a6389d13bdf26db8b83c30")
category2 = Category.new(name: "plomería")
category2.photo.attach(io: file, filename: "plomería.png", content_type: "image/png")
category2.save!

puts "creando categoría 3..."
file = URI.open("https://img.freepik.com/foto-gratis/jardineria_23-2148020400.jpg?w=1800&t=st=1694301363~exp=1694301963~hmac=8a42b0b5e5079a45160aa5d9efa95e26bb3fa6f15d4cff5842240f447416da67")
category3 = Category.new(name: "jardinería")
category3.photo.attach(io: file, filename: "jardinería.png", content_type: "image/png")
category3.save!

puts "creando categoría 4..."
file = URI.open("https://img.freepik.com/foto-gratis/reparacion-trabajador-mantenimiento-servicio_23-2149176757.jpg?w=826&t=st=1694301404~exp=1694302004~hmac=30487354755fa15045a99d35330f79b1d81fde03b078c049a60c3080054197c3")
category4 = Category.new(name: "electricidad")
category4.photo.attach(io: file, filename: "electricidad.png", content_type: "image/png")
category4.save!

puts "creando categoría 5..."
file = URI.open("https://img.freepik.com/foto-gratis/montones-ladrillos-colocados-piso-fabrica_1150-15102.jpg?w=1800&t=st=1694301450~exp=1694302050~hmac=92938f0093553019a330b357c69b90977ba7f00b8fa0a313a1ee361cf49f4cf2")
category5 = Category.new(name: "albañilería")
category5.photo.attach(io: file, filename: "albañilería.png", content_type: "image/png")
category5.save!

puts "creando categoría 6..."
file = URI.open("https://images.unsplash.com/flagged/photo-1564767609342-620cb19b2357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2873&q=80")
category6 = Category.new(name: "cerrajería")
category6.photo.attach(io: file, filename: "cerrajería.png", content_type: "image/png")
category6.save!

puts "creando categoría 7..."
file = URI.open("https://img.freepik.com/foto-gratis/reparador-haciendo-servicio-aire-acondicionado_1303-26541.jpg?w=1800&t=st=1694301530~exp=1694302130~hmac=536093c2221614d95a1879ebe603fa6bccf2666ccac98ba3beac860ff8faf534")
category7 = Category.new(name: "climatización")
category7.photo.attach(io: file, filename: "climatización.png", content_type: "image/png")
category7.save!

puts "creando categoría 8..."
file = URI.open("https://img.freepik.com/foto-gratis/personas-desinfectando-area-riesgo-biologico_23-2148848551.jpg?w=2000&t=st=1694301630~exp=1694302230~hmac=70091a85999e165b6844a3492e00524087d04156ec1e3f79feb6fe9f5d2cf1db")
category8 = Category.new(name: "control de plagas")
category8.photo.attach(io: file, filename: "control de plagas.png", content_type: "image/png")
category8.save!

puts "creando categoría 9..."
file = URI.open("https://img.freepik.com/foto-gratis/repartidores-cargando-cajas-carton-furgoneta-mientras-preparan-envio_637285-2289.jpg?w=1800&t=st=1694301689~exp=1694302289~hmac=f414073bb8252e21696bc0fab9a1b42898ad23d660c78bc6a41664d1b69b3296")
category9 = Category.new(name: "mudanzas")
category9.photo.attach(io: file, filename: "mudanzas.png", content_type: "image/png")
category9.save!

# USUARIOS

puts "creando usuario 1..."
file = URI.open("https://avatars.githubusercontent.com/u/139592608?v=4")
user1 = User.new(email: "elisa@gmail.com", password: "123456", address: "Av. Pajaritos 4199, Maipú, Santiago, Chile", name: "Elisa")
user1.photo.attach(io: file, filename: "elisa.png", content_type: "image/png")
user1.save!

puts "creando usuario 2..."
file = URI.open("https://avatars.githubusercontent.com/u/88845568?v=4")
user2 = User.new(email: "facundo@gmail.com", password: "123456", address: "Av. Vicuña Mackenna 7110, La Florida, Santiago, Chile", name: "Facundo")
user2.photo.attach(io: file, filename: "facundo.png", content_type: "image/png")
user2.save!

puts "creando usuario 3..."
file = URI.open("https://avatars.githubusercontent.com/u/128540417?v=4")
user3 = User.new(email: "dominique@gmail.com", password: "123456", address: "Av. Francisco Bilbao 875, Providencia, Santiago, Chile", name: "Dominique")
user3.photo.attach(io: file, filename: "dominique.png", content_type: "image/png")
user3.save!

puts "creando usuario 4..."
file = URI.open("https://images.pexels.com/photos/4484071/pexels-photo-4484071.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
user4 = User.new(email: "santiago@gmail.com", password: "123456", address: "Av. Pedro Montt 2851, Valparaíso, Chile", name: "Santiago")
user4.photo.attach(io: file, filename: "santiago.png", content_type: "image/png")
user4.save!

puts "creando usuario 5..."
file = URI.open("https://images.pexels.com/photos/8459998/pexels-photo-8459998.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
user5 = User.new(email: "natalia@gmail.com", password: "123456", address: "Av. Libertad 1348, Viña del Mar, Chile", name: "Natalia")
user5.photo.attach(io: file, filename: "natalia.png", content_type: "image/png")
user5.save!

puts "creando usuario 6..."
file = URI.open("https://img.freepik.com/foto-gratis/cerrar-hombre-sonriente-tomando-selfie_23-2149155156.jpg?w=1800&t=st=1694302622~exp=1694303222~hmac=b49457a13f31fe5cbf95cf2fbfcb6733bb6b15932079b47b021f7cf88ddc8425")
user6 = User.new(email: "sebastian@gmail.com", password: "123456", address: "Av. O'Higgins 680, Concepción, Chile", name: "Sebastián")
user6.photo.attach(io: file, filename: "sebastián.png", content_type: "image/png")
user6.save!

puts "creando usuario 7..."
file = URI.open("https://img.freepik.com/foto-gratis/persona-origen-indio-divirtiendose_23-2150285311.jpg?w=826&t=st=1694302689~exp=1694303289~hmac=b2c33dcf6e6944bf98f8821fac33e4447e2759673f6facf4367311441b4b5199")
user7 = User.new(email: "omar@gmail.com", password: "123456", address: "Av. Paseo de la Reforma 135, Cuauhtémoc, Ciudad de México, México", name: "Omar")
user7.photo.attach(io: file, filename: "omar.png", content_type: "image/png")
user7.save!

puts "creando usuario 8..."
file = URI.open("https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
user8 = User.new(email: "mario@gmail.com", password: "123456", address: "Av. Universidad 3000, Coyoacán, Ciudad de México, México", name: "Mario")
user8.photo.attach(io: file, filename: "mario.png", content_type: "image/png")
user8.save!

puts "creando usuario 9..."
file = URI.open("https://images.pexels.com/photos/3771807/pexels-photo-3771807.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
user9 = User.new(email: "rodrigo@gmail.com", password: "123456", address: "Calzada Independencia Sur 800, Centro, Guadalajara, Jalisco, México", name: "Rodrigo")
user9.photo.attach(io: file, filename: "rodrigo.png", content_type: "image/png")
user9.save!

puts "creando usuario 10..."
file = URI.open("https://images.pexels.com/photos/1139743/pexels-photo-1139743.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
user10 = User.new(email: "javier@gmail.com", password: "123456", address: "Blvd. Adolfo López Mateos 1001, León, Guanajuato, México", name: "Javier")
user10.photo.attach(io: file, filename: "javier.png", content_type: "image/png")
user10.save!

puts "creando usuario 11..."
file = URI.open("https://img.freepik.com/foto-gratis/chica-mexicana-rizada-gorra-cuero-taza-cafe-plastico-mano-contra-carrusel_627829-9211.jpg?w=1800&t=st=1694405346~exp=1694405946~hmac=bac3ed8adc89af8453bf132d6c6c33e60df5790963c525e471eb52b7ab34c3e0")
user11 = User.new(email: "tamara@gmail.com", password: "123456", address: "Paseo de los Héroes 9350, Zonaeste, Tijuana, Baja California, México", name: "Tamara")
user11.photo.attach(io: file, filename: "tamara.png", content_type: "image/png")
user11.save!

puts "creando usuario 12..."
file = URI.open("https://images.unsplash.com/photo-1573497019940-1c28c88b4f3e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2787&q=80")
user12 = User.new(email: "carmen@gmail.com", password: "123456", address: "Av. Constituyentes 1000, Loma Bonita, Querétaro, México", name: "Carmen")
user12.photo.attach(io: file, filename: "carmen.png", content_type: "image/png")
user12.save!

puts "creando usuario 13..."
file = URI.open("https://img.freepik.com/foto-gratis/hombre-sonriendo-feria-mercado_23-2150771085.jpg?w=2000&t=st=1694405111~exp=1694405711~hmac=d5b2b53f4b4244268838f2aaaa89fce7a3f9d3b33aebb07a29c823fa4b7bf49c")
user13 = User.new(email: "antonio@gmail.com", password: "123456", address: "Blvd. Kukulcan Km 12, Zona Hotelera, Cancún, Quintana Roo, México", name: "Antonio")
user13.photo.attach(io: file, filename: "antonio.png", content_type: "image/png")
user13.save!

puts "creando usuario 14..."
file = URI.open("https://img.freepik.com/foto-gratis/mujer-joven-feliz-que-toma-foto-selfie-al-aire-libre_1262-19167.jpg?w=1800&t=st=1694303443~exp=1694304043~hmac=c29fe742b9f09a1a78b555dca6b613b93240c002b6ef9ccfd6d0bb1dc0a0c63b")
user14 = User.new(email: "maria@gmail.com", password: "123456", address: "Av. Francisco I. Madero 1130, Centro, Monterrey, Nuevo León, México", name: "María")
user14.photo.attach(io: file, filename: "maría.png", content_type: "image/png")
user14.save!

puts "creando usuario 15..."
file = URI.open("https://images.pexels.com/photos/567459/pexels-photo-567459.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
user15 = User.new(email: "julio@gmail.com", password: "123456", address: "Av. Libertador Bernardo O'Higgins 653, Santiago, Región Metropolitana, Chile", name: "Julio")
user15.photo.attach(io: file, filename: "julio.png", content_type: "image/png")
user15.save!

puts "creando usuario 16..."
file = URI.open("https://images.pexels.com/photos/6791499/pexels-photo-6791499.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
user16 = User.new(email: "david@gmail.com", password: "123456", address: "Av. Providencia 1650, Providencia, Región Metropolitana, Chile", name: "David")
user16.photo.attach(io: file, filename: "david.png", content_type: "image/png")
user16.save!

puts "creando usuario 17..."
file = URI.open("https://img.freepik.com/foto-gratis/selfie-retrato-videollamada_23-2149186120.jpg?w=1800&t=st=1694303760~exp=1694304360~hmac=4a834bb5d47faf923c3d2ea71a8464916cb6bae118d8b959fb73172a6b260c8b")
user17 = User.new(email: "lucia@gmail.com", password: "123456", address: "Av. Vicuña Mackenna 4860, Macul, Región Metropolitana, Chile", name: "Lucía")
user17.photo.attach(io: file, filename: "lucía.png", content_type: "image/png")
user17.save!

puts "creando usuario 18..."
file = URI.open("https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2787&q=80")
user18 = User.new(email: "leonel@gmail.com", password: "123456", address: "Av. Pedro de Valdivia 1509, Ñuñoa, Región Metropolitana, Chile", name: "Leonel")
user18.photo.attach(io: file, filename: "leonel.png", content_type: "image/png")
user18.save!

puts "creando usuario 19..."
file = URI.open("https://images.pexels.com/photos/2907131/pexels-photo-2907131.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
user19 = User.new(email: "sandra@gmail.com", password: "123456", address: "Av. Andrés Bello 2465, Las Condes, Región Metropolitana, Chile", name: "Sandra")
user19.photo.attach(io: file, filename: "sandra.png", content_type: "image/png")
user19.save!

puts "creando usuario 20..."
file = URI.open("https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
user20 = User.new(email: "diana@gmail.com", password: "123456", address: "Av. Apoquindo 4400, Las Condes, Región Metropolitana, Chile", name: "Diana")
user20.photo.attach(io: file, filename: "diana.png", content_type: "image/png")
user20.save!

puts "creando usuario 21..."
file = URI.open("https://images.unsplash.com/photo-1544723795-3fb6469f5b39?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2592&q=80")
user21 = User.new(email: "carlos@gmail.com", password: "123456", address: "Av. Francisco Bilbao 2799, Providencia, Región Metropolitana, Chile", name: "Carlos")
user21.photo.attach(io: file, filename: "carlos.png", content_type: "image/png")
user21.save!

puts "creando usuario 22..."
file = URI.open("https://images.unsplash.com/photo-1607346256330-dee7af15f7c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3006&q=80")
user22 = User.new(email: "roberto@gmail.com", password: "123456", address: "Av. Pajaritos 4155, Maipú, Región Metropolitana, Chile", name: "Roberto")
user22.photo.attach(io: file, filename: "roberto.png", content_type: "image/png")
user22.save!

puts "creando usuario 23..."
file = URI.open("https://images.unsplash.com/photo-1540569014015-19a7be504e3a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2835&q=80")
user23 = User.new(email: "mauro@gmail.com", password: "123456", address: "Av. Matta 701, Santiago, Región Metropolitana, Chile", name: "Mauro")
user23.photo.attach(io: file, filename: "mauro.png", content_type: "image/png")
user23.save!

puts "creando usuario 24..."
file = URI.open("https://images.unsplash.com/photo-1564564321837-a57b7070ac4f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2952&q=80")
user24 = User.new(email: "nicolas@gmail.com", password: "123456", address: "Av. Recoleta 715, Recoleta, Región Metropolitana, Chile", name: "Nicolas")
user24.photo.attach(io: file, filename: "nicolas.png", content_type: "image/png")
user24.save!

puts "creando usuario 25..."
file = URI.open("https://images.unsplash.com/photo-1530268729831-4b0b9e170218?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80")
user25 = User.new(email: "guillermo@gmail.com", password: "123456", address: "Av. 11 de Septiembre 1881, Providencia, Región Metropolitana, Chile", name: "Guillermo")
user25.photo.attach(io: file, filename: "guillermo.png", content_type: "image/png")
user25.save!

puts "creando usuario 26..."
file = URI.open("https://images.unsplash.com/photo-1588701177361-c42359b29f68?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80")
user26 = User.new(email: "alejandra@gmail.com", password: "123456", address: "Av. Manuel Montt 367, Providencia, Región Metropolitana, Chile", name: "Alejandra")
user26.photo.attach(io: file, filename: "alejandra.png", content_type: "image/png")
user26.save!

puts "creando usuario 27..."
file = URI.open("https://images.pexels.com/photos/15106879/pexels-photo-15106879/free-photo-of-hombre-persona-gafas-de-sol-grafiti.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
user27 = User.new(email: "jorge@gmail.com", password: "123456", address: "Av. Alonso de Córdova 5870, Las Condes, Región Metropolitana, Chile", name: "Jorge")
user27.photo.attach(io: file, filename: "jorge.png", content_type: "image/png")
user27.save!

puts "creando usuario 28..."
file = URI.open("https://images.unsplash.com/photo-1588453383063-37ea0b78f30f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80")
user28 = User.new(email: "lucrecia@gmail.com", password: "123456", address: "Av. José Pedro Alessandri 1166, Ñuñoa, Región Metropolitana, Chile", name: "Lucrecia")
user28.photo.attach(io: file, filename: "lucrecia.png", content_type: "image/png")
user28.save!

puts "creando usuario 29..."
file = URI.open("https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
user29 = User.new(email: "brenda@gmail.com", password: "123456", address: "Av. La Florida 8985, La Florida, Región Metropolitana, Chile", name: "Brenda")
user29.photo.attach(io: file, filename: "brenda.png", content_type: "image/png")
user29.save!

puts "creando usuario 30..."
file = URI.open("https://images.unsplash.com/photo-1611987345939-a481cc27367e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2846&q=80")
user30 = User.new(email: "hernan@gmail.com", password: "123456", address: "Av. Americo Vespucio 1737, La Cisterna, Región Metropolitana, Chile", name: "Hernán")
user30.photo.attach(io: file, filename: "hernan.png", content_type: "image/png")
user30.save!

# SERVICIOS

# user4
puts "creando servicio 1..."
service1 = Service.new(user_id: user4.id, category_id: category1.id, description: "Especialista en restauraciones de muebles antigüos.")
service1.save!

puts "creando servicio 2..."
service2 = Service.new(user_id: user4.id, category_id: category6.id, description: "Colocación de accesorios de cerrajería.")
service2.save!

puts "creando servicio 3..."
service3 = Service.new(user_id: user4.id, category_id: category9.id, description: "Realizo mudanzas exprés.")
service3.save!

puts "creando servicio 4..."
service4 = Service.new(user_id: user4.id, category_id: category4.id, description: "Especialista en solucionar problemas en tableros eléctricos.")
service4.save!

puts "creando servicio 5..."
service5 = Service.new(user_id: user4.id, category_id: category8.id, description: "Realizo de servicios de fumigación en general.")
service5.save!

# user5
puts "creando servicio 6..."
service6 = Service.new(user_id: user5.id, category_id: category4.id, description: "Atiendo problemas en cableados generales del hogar.")
service6.save!

puts "creando servicio 7..."
service7 = Service.new(user_id: user5.id, category_id: category7.id, description: "Realizo mantenimiento en sistemas de calefacción.")
service7.save!

# user8
puts "creando servicio 8..."
service8 = Service.new(user_id: user8.id, category_id: category8.id, description: "Me especializo en controlar invasiones de roedores.")
service8.save!

puts "creando servicio 9..."
service9 = Service.new(user_id: user8.id, category_id: category2.id, description: "Servicios de plomería y gasfitería en general.")
service9.save!

puts "creando servicio 10..."
service10 = Service.new(user_id: user8.id, category_id: category3.id, description: "Realizo mantenimiento de jardines.")
service10.save!

puts "creando servicio 11..."
service11 = Service.new(user_id: user8.id, category_id: category5.id, description: "Realizo trabajos de albañilería sencillos, no estructurales.")
service11.save!

# user9
puts "creando servicio 12..."
service12 = Service.new(user_id: user9.id, category_id: category5.id, description: "Me especializo en albañilerías de acabados finos de todo tipo.")
service12.save!

puts "creando servicio 13..."
service13 = Service.new(user_id: user9.id, category_id: category2.id, description: "Realizo conexiones de equipos hidrosanitarios y de gas.")
service13.save!

puts "creando servicio 14..."
service14 = Service.new(user_id: user9.id, category_id: category4.id, description: "Tengo conocimientos básicos de ingeniería eléctrica.")
service14.save!

puts "creando servicio 15..."
service15 = Service.new(user_id: user9.id, category_id: category6.id, description: "Realizo copias de llaves, colocación de chapas y herrajes.")
service15.save!

# user10
puts "creando servicio 16.."
service16 = Service.new(user_id: user10.id, category_id: category2.id, description: "Conexión de equipos y mantenimiento de los mismos.")
service16.save!

puts "creando servicio 17.."
service17 = Service.new(user_id: user10.id, category_id: category7.id, description: "Instalación y mantenimiento de equipos para climatización.")
service17.save!

# user11
puts "creando servicio 18.."
service18 = Service.new(user_id: user11.id, category_id: category3.id, description: "¡Me encantan las plantas! Puedo ayudarte a mantener y cuidar las plantas de tu hogar, realizo recomendaciones personalizadas.")
service18.save!

puts "creando servicio 19.."
service19 = Service.new(user_id: user11.id, category_id: category8.id, description: "Me especializo en tratar plagas del jardín.")
service19.save!

# user13
puts "creando servicio 20.."
service20 = Service.new(user_id: user13.id, category_id: category1.id, description: "Soy fabricante de mobiliario de carpintería a la medida.")
service20.save!

puts "creando servicio 21.."
service21 = Service.new(user_id: user13.id, category_id: category9.id, description: "Servicios de mudanzas, ¡yo me encargo que tus muebles lleguen perfectos a su destino!")
service21.save!

puts "creando servicio 22.."
service22 = Service.new(user_id: user13.id, category_id: category3.id, description: "Diseño e instalación de jardines personalizados.")
service22.save!

puts "creando servicio 23.."
service23 = Service.new(user_id: user13.id, category_id: category5.id, description: "Realizo trabajos de albañilerías y colocación de tejado.")
service23.save!

puts "creando servicio 24.."
service24 = Service.new(user_id: user13.id, category_id: category7.id, description: "Realizo instalación de equipos de climatización.")
service24.save!

# user15
puts "creando servicio 25.."
service25= Service.new(user_id: user15.id, category_id: category7.id, description: "Mantenimiento, conexión y recomendación de equipos.")
service25.save!

puts "creando servicio 26.."
service26 = Service.new(user_id: user15.id, category_id: category4.id, description: "Servicios de cableado y mantenimiento.")
service26.save!

puts "creando servicio 27.."
service27 = Service.new(user_id: user15.id, category_id: category5.id, description: "Realizo trabajos de albañilerías en general.")
service27.save!

puts "creando servicio 28.."
service28 = Service.new(user_id: user15.id, category_id: category8.id, description: "Me especializo en fumigaciones con productos ecológicos.")
service28.save!

# user16
puts "creando servicio 29.."
service29 = Service.new(user_id: user16.id, category_id: category8.id, description: "Soluciono tus problemas de plagas con fumigaciones definitivas.")
service29.save!

puts "creando servicio 30.."
service30 = Service.new(user_id: user16.id, category_id: category6.id, description: "Realizo copias de todo tipo de llaves, incluyendo eléctricas y automotrices.")
service30.save!

puts "creando servicio 31.."
service31 = Service.new(user_id: user16.id, category_id: category2.id, description: "Mantenimiento de tuberías hidráulicas.")
service31.save!

puts "creando servicio32.."
service32 = Service.new(user_id: user16.id, category_id: category5.id, description: "Apoyo en construcciones y remodelaciones.")
service32.save!

puts "creando servicio33.."
service33 = Service.new(user_id: user16.id, category_id: category4.id, description: "Me especializo en conexiones de equipos especiales de audio.")
service33.save!

# user19
puts "creando servicio34.."
service34 = Service.new(user_id: user19.id, category_id: category3.id, description: "Cuido y mantengo tus plantas con los mejores materiales y mano de obra.")
service34.save!

puts "creando servicio35.."
service35 = Service.new(user_id: user19.id, category_id: category1.id, description: "Reparo los muebles y carpinterías de tu hogar.")
service35.save!

puts "creando servicio36.."
service36 = Service.new(user_id: user19.id, category_id: category5.id, description: "Realizo trabajos de albañilería en general.")
service36.save!

puts "creando servicio37.."
service37 = Service.new(user_id: user19.id, category_id: category7.id, description: "Distribuidora e instaladora de equipos de climatización amigables con el ambiente.")
service37.save!

puts "creando servicio38.."
service38 = Service.new(user_id: user19.id, category_id: category8.id, description: "Te ayudo a mantener tu jardín y plantas interiores libres de plagas.")
service38.save!

# user20

puts "creando servicio39.."
service39 = Service.new(user_id: user20.id, category_id: category1.id, description: "Fabrico mobiliario de alta calidad.")
service39.save!

puts "creando servicio40.."
service40 = Service.new(user_id: user20.id, category_id: category6.id, description: "Instalación de herrajes de seguridad.")
service40.save!

puts "creando servicio41.."
service41 = Service.new(user_id: user20.id, category_id: category9.id, description: "Servicios de mudanza y emplayado.")
service41.save!

puts "creando servicio42.."
service42 = Service.new(user_id: user20.id, category_id: category3.id, description: "Cuidado y mantenimiento de plantas para interiores.")
service42.save!

puts "creando servicio43.."
service43 = Service.new(user_id: user20.id, category_id: category7.id, description: "Mantenimiento de equipos de enfriamiento.")
service43.save!

# user21
puts "creando servicio44.."
service44 = Service.new(user_id: user21.id, category_id: category5.id, description: "Realizo los mejores trabajos de albañilería, acabados y tejados.")
service44.save!

puts "creando servicio45.."
service45 = Service.new(user_id: user21.id, category_id: category7.id, description: "Instalación y mantenimiento de sistemas de calefacción.")
service45.save!

puts "creando servicio46.."
service46= Service.new(user_id: user21.id, category_id: category2.id, description: "Realizo reparaciones en fugas hidráulicas.")
service46.save!

puts "creando servicio47.."
service47 = Service.new(user_id: user21.id, category_id: category4.id, description: "Instalación de sistemas de domótica.")
service47.save!

# user22

puts "creando servicio48.."
service48 = Service.new(user_id: user22.id, category_id: category9.id, description: "Realizo mudanzas en largas distacias.")
service48.save!

puts "creando servicio49.."
service49 = Service.new(user_id: user22.id, category_id: category6.id, description: "Sistemas de seguridad para puertas principales y garages.")
service49.save!

puts "creando servicio50.."
service50 = Service.new(user_id: user22.id, category_id: category3.id, description: "Mantenimiento de jardines con especialización en trasplante de árboles.")
service50.save!

puts "creando servicio51.."
service51 = Service.new(user_id: user22.id, category_id: category2.id, description: "Mantenimiento de tuberías de gas e instalación de equipos.")
service51.save!

puts "creando servicio52.."
service52 = Service.new(user_id: user22.id, category_id: category7.id, description: "Instalación y mantenimiento de calefacción eléctrica.")
service52.save!

# user23
puts "creando servicio53.."
service53 = Service.new(user_id: user23.id, category_id: category4.id, description: "Instalación de luminarias y accesorios eléctricos.")
service53.save!

puts "creando servicio54.."
service54 = Service.new(user_id: user23.id, category_id: category6.id, description: "Instalación de herrajes y copias de llaves.")
service54.save!

puts "creando servicio55.."
service55 = Service.new(user_id: user23.id, category_id: category1.id, description: "Especialización en mobiliario de cocina.")
service55.save!

puts "creando servicio56.."
service56 = Service.new(user_id: user23.id, category_id: category9.id, description: "Servicios de mudanzas de toda escala.")
service56.save!

# user24
puts "creando servicio57.."
service57 = Service.new(user_id: user24.id, category_id: category5.id, description: "Apoyo en trabajos sencillos de albañilería y acabados.")
service57.save!

puts "creando servicio58.."
service58 = Service.new(user_id: user24.id, category_id: category1.id, description: "Fabricación y mantenimiento de puertas y closets de madera.")
service58.save!

puts "creando servicio59.."
service59 = Service.new(user_id: user24.id, category_id: category9.id, description: "Te apoyo realizando mudanzas de forma segura.")
service59.save!

puts "creando servicio60.."
service60 = Service.new(user_id: user24.id, category_id: category6.id, description: "Realizo trabajos de instalación de herrajes.")
service60.save!

# user25
puts "creando servicio61.."
service61 = Service.new(user_id: user25.id, category_id: category8.id, description: "Servicios de fumigaciones especializadas.")
service61.save!

puts "creando servicio62.."
service62 = Service.new(user_id: user25.id, category_id: category9.id, description: "Realizo mudanzas con especial atención al cuidado de tus muebles.")
service62.save!

puts "creando servicio63.."
service63 = Service.new(user_id: user25.id, category_id: category1.id, description: "Restauración de mobiliario antigüo.")
service63.save!

puts "creando servicio64.."
service64 = Service.new(user_id: user25.id, category_id: category7.id, description: "Instalación y mantenimiento de equipos de extracción y ventilación.")
service64.save!

# user26
puts "creando servicio65.."
service65= Service.new(user_id: user26.id, category_id: category3.id, description: "Servicios de podado de césped y mantenimiento de áreas verdes.")
service65.save!

puts "creando servicio66.."
service66 = Service.new(user_id: user26.id, category_id: category4.id, description: "Mantemiento de sistemas eléctricos.")
service66.save!

puts "creando servicio67.."
service67 = Service.new(user_id: user26.id, category_id: category2.id, description: "Realizo servicio de instalación de filtros para agua purificada.")
service67.save!

puts "creando servicio68.."
service68 = Service.new(user_id: user26.id, category_id: category8.id, description: "Realizo servicios de fumigación de hormigas invasoras.")
service68.save!

# user27
puts "creando servicio69.."
service69 = Service.new(user_id: user27.id, category_id: category9.id, description: "Mudanzas especializadas en mobiliario de gran escala y pianos.")
service69.save!

puts "creando servicio70.."
service70 = Service.new(user_id: user27.id, category_id: category8.id, description: "Fumigaciones y tratamiento de nidos de diversas alimañas.")
service70.save!

puts "creando servicio71.."
service71 = Service.new(user_id: user27.id, category_id: category6.id, description: "Realizo copias de llaves de todo tipo.")
service71.save!

puts "creando servicio72.."
service72 = Service.new(user_id: user27.id, category_id: category3.id, description: "Servicio de podado de árboles y arbustos de gran escala.")
service72.save!

# user28
puts "creando servicio73.."
service73 = Service.new(user_id: user28.id, category_id: category1.id, description: "Realizo diseños de carpintería a la medida.")
service73.save!

puts "creando servicio74.."
service74 = Service.new(user_id: user28.id, category_id: category3.id, description: "Realizo diseños de paletas vegetales para interiores.")
service74.save!

# user29
puts "creando servicio75.."
service75 = Service.new(user_id: user29.id, category_id: category2.id, description: "Servicio de mantenimiento de tuberías e instalación de equipos hidráulicos y sanitarios.")
service75.save!

puts "creando servicio76.."
service76 = Service.new(user_id: user29.id, category_id: category4.id, description: "Instalación y revisión de equipos electrónicos.")
service76.save!

# user30
puts "creando servicio77.."
service77 = Service.new(user_id: user30.id, category_id: category1.id, description: "Reparación, mantenimiento y restauración de carpinterías en general.")
service77.save!

puts "creando servicio78.."
service78 = Service.new(user_id: user30.id, category_id: category5.id, description: "Trabajos de albañilerías con especialización en tejados.")
service78.save!

puts "creando servicio79.."
service79 = Service.new(user_id: user30.id, category_id: category9.id, description: "Realizo todo tipo de mudanzas con el mayor cuidado.")
service79.save!

puts "creando servicio80.."
service80 = Service.new(user_id: user30.id, category_id: category2.id, description: "Mantenimiento de tuberías y limpieza de sistemas pluviales.")
service80.save!

puts "creando servicio81.."
service81 = Service.new(user_id: user30.id, category_id: category6.id, description: "Servicio de mantenimiento e instalación de herrajes.")
service81.save!

# SOLICITUDES

# para user4
puts "creando request 1..."
request1 = Request.new(user_id: user1.id, status: "enviada", service_id: service1.id, description: "Necesito ayuda para reparar un comedor antigüo.", start_date: Date.new(2023,9,16), end_date: Date.new(2023,10,16), budget: 0)
request1.save!

puts "creando request 2..."
request2 = Request.new(user_id: user2.id, status: "enviada", service_id: service2.id, description: "Deseo cambiar la cerrajería de la puerta principal de mi casa y mi garage.", start_date: Date.new(2023,9,20), end_date: Date.new(2023,10,20), budget: 0)
request2.save!

puts "creando request 3..."
request3 = Request.new(user_id: user3.id, status: "enviada", service_id: service3.id, description: "Necesito ayuda para realizar una mudanza el próximo mes.", start_date: Date.new(2023,10,20), end_date: Date.new(2023,10,30), budget: 0)

# para user5
puts "creando request 4..."
request4 = Request.new(user_id: user1.id, status: "enviada", service_id: service6.id, description: "Requiero realizar el mantenimiento a mi tablero eléctrico.", start_date: Date.new(2023,9,30), end_date: Date.new(2023,10,20), budget: 0)
request4.save!

puts "creando request 5..."
request5 = Request.new(user_id: user2.id, status: "enviada", service_id: service6.id, description: "Quiero sustituir algunos cableados en mi casa.", start_date: Date.new(2023,9,20), end_date: Date.new(2023,10,30), budget: 0)
request5.save!

puts "creando request 6..."
request6 = Request.new(user_id: user3.id, status: "enviada", service_id: service7.id, description: "Quiero realizar el mantenimiento del sistema de calefacción de mi departamento.", start_date: Date.new(2023,9,17), end_date: Date.new(2023,10,17), budget: 0)
request6.save!

# para user8
puts "creando request 7..."
request7 = Request.new(user_id: user6.id, status: "enviada", service_id: service8.id, description: "Necesito fumigar.", start_date: Date.new(2023,9,17), end_date: Date.new(2023,10,17), budget: 0)
request7.save!

puts "creando request 8..."
request8 = Request.new(user_id: user3.id, status: "enviada", service_id: service8.id, description: "Necesito instalar un nuevo calentador de agua en mi departamento.", start_date: Date.new(2023,9,20), end_date: Date.new(2023,10,30), budget: 0)
request8.save!

puts "creando request 9..."
request9 = Request.new(user_id: user1.id, status: "enviada", service_id: service10.id, description: "Necesito un jardinero que me apoye en el mantenimiento del jardín.", start_date: Date.new(2023,9,25), end_date: Date.new(2023,10,25), budget: 0)
request9.save!

# para user9
puts "creando request 10..."
request10 = Request.new(user_id: user2.id, status: "enviada", service_id: service12.id, description: "Requiero ayuda para pintar los interiores de mi casa.", start_date: Date.new(2023,10,01), end_date: Date.new(2023,10,31), budget: 0)
request10.save!

puts "creando request 11..."
request11 = Request.new(user_id: user6.id, status: "enviada", service_id: service13.id, description: "Necesito que me ayuden a colocar muebles de lavabo y WC en un baño de mi casa.", start_date: Date.new(2023,10,01), end_date: Date.new(2023,10,20), budget: 0)
request11.save!

puts "creando request 12..."
request12 = Request.new(user_id: user6.id, status: "enviada", service_id: service15.id, description: "Requiero sacar copias de varios juegos de llaves.", start_date: Date.new(2023,9,20), end_date: Date.new(2023,9,30), budget: 0)
request12.save!

# para user 10
puts "creando request 13..."
request13 = Request.new(user_id: user6.id, status: "enviada", service_id: service16.id, description: "Deseo realizar una revisión de las tuberías hidráulicas de mi casa.", start_date: Date.new(2023,10,03), end_date: Date.new(2023,10,13), budget: 0)
request13.save!

puts "creando request 14..."
request14 = Request.new(user_id: user4.id, status: "enviada", service_id: service16.id, description: "Sospecho que hay una fuga en mi baño, necesito asistencia para revisarla.", start_date: Date.new(2023,9,30), end_date: Date.new(2023,10,01), budget: 0)
request14.save!

puts "creando request 15..."
request15 = Request.new(user_id: user7.id, status: "enviada", service_id: service16.id, description: "Requiero realizar el mantenimiento de mi sistema de clima.", start_date: Date.new(2023,10,30), end_date: Date.new(2023,11,01), budget: 0)
request15.save!

# para user11
puts "creando request 16..."
request16 = Request.new(user_id: user7.id, status: "enviada", service_id: service18.id, description: "Quiero recomendaciones para las plantas de mi terraza.", start_date: Date.new(2023,10,15), end_date: Date.new(2023,11,15), budget: 0)
request16.save!

puts "creando request 17..."
request17 = Request.new(user_id: user12.id, status: "enviada", service_id: service18.id, description: "Necesito mantenimiento de las plantas de mi casa mientras salgo de viaje.", start_date: Date.new(2023,12,15), end_date: Date.new(2023,11,20), budget: 0)
request17.save!

puts "creando request 18..."
request18 = Request.new(user_id: user4.id, status: "enviada", service_id: service19.id, description: "Deseo fumigar mi jardín contra plagas en los arbustos.", start_date: Date.new(2023,10,15), end_date: Date.new(2023,11,20), budget: 0)
request18.save!

# para user13
puts "creando request 19..."
request19 = Request.new(user_id: user12.id, status: "enviada", service_id: service20.id, description: "Quiero armar unas repisas para una bodega de guardado en mi casa.", start_date: Date.new(2023,11,15), end_date: Date.new(2023,11,30), budget: 0)
request19.save!

puts "creando request 20..."
request20 = Request.new(user_id: user11.id, status: "enviada", service_id: service21.id, description: "Voy a reaalizar la mudanza de mi estudio y necesito un mudancero de confianza.", start_date: Date.new(2023,10,1), end_date: Date.new(2023,10,05), budget: 0)
request20.save!

puts "creando request 21..."
request21 = Request.new(user_id: user7.id, status: "enviada", service_id: service20.id, description: "Quiero añadir puertas a los gabinetes de mi cocina.", start_date: Date.new(2023,11,1), end_date: Date.new(2023,11,20), budget: 0)
request21.save!

# para user15
puts "creando request 22..."
request22 = Request.new(user_id: user17.id, status: "enviada", service_id: service28.id, description: "Quiero fumigar mi casa y probar nuevos productos para no dañar el medio ambiente.", start_date: Date.new(2023,10,1), end_date: Date.new(2023,10,30), budget: 0)
request22.save!

puts "creando request 23..."
request23 = Request.new(user_id: user14.id, status: "enviada", service_id: service28.id, description: "Requiero fumigar algunas áreas de mi casa.", start_date: Date.new(2023,9,20), end_date: Date.new(2023,9,30), budget: 0)
request23.save!

puts "creando request 24..."
request24 = Request.new(user_id: user11.id, status: "enviada", service_id: service27.id, description: "Necesito reparar algunos muros y ventanas antes de mudarme.", start_date: Date.new(2023,9,20), end_date: Date.new(2023,9,30), budget: 0)
request24.save!

# para user16

# REVIEWS
