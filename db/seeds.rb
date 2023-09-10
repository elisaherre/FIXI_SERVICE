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
file = URI.open("https://img.freepik.com/foto-gratis/pintura-mural-concepto-rodillo_23-2148903464.jpg?w=1800&t=st=1694301496~exp=1694302096~hmac=01730430b678b1a38949550bd7c5f57ed9a1f1f0c1df9baf86ffa1ad7e60fdb2")
category6 = Category.new(name: "acabados")
category6.photo.attach(io: file, filename: "acabados.png", content_type: "image/png")
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
category8.photo.attach(io: file, filename: "mudanzas.png", content_type: "image/png")
category9.save!

# USUARIOS

puts "creando usuario 1..."
file = URI.open("https://avatars.githubusercontent.com/u/139592608?v=4")
user1 = User.new(email: "elisa@gmail.com", password: "123456", address: "calle 123", name: "Elisa")
user1.photo.attach(io: file, filename: "elisa.png", content_type: "image/png")
user1.save!

puts "creando usuario 2..."
file = URI.open("https://avatars.githubusercontent.com/u/88845568?v=4")
user2 = User.new(email: "facundo@gmail.com", password: "123456", address: "calle 123", name: "Facundo")
user2.photo.attach(io: file, filename: "facundo.png", content_type: "image/png")
user2.save!

puts "creando usuario 3..."
file = URI.open("https://avatars.githubusercontent.com/u/128540417?v=4")
user3 = User.new(email: "dominique@gmail.com", password: "123456", address: "calle 123", name: "Dominique")
user3.photo.attach(io: file, filename: "dominique.png", content_type: "image/png")
user3.save!

puts "creando usuario 4..."
file = URI.open("https://img.freepik.com/foto-gratis/apuesto-joven-brazos-cruzados-sobre-fondo-blanco_23-2148222620.jpg?w=1060&t=st=1694301989~exp=1694302589~hmac=9ab3707366dcf729d54c05765b90c8bf4283a0926f788748138719f96afe0773")
user4 = User.new(email: "santiago@gmail.com", password: "123456", address: "calle 123", name: "Santiago")
user4.photo.attach(io: file, filename: "santiago.png", content_type: "image/png")
user4.save!

puts "creando usuario 5..."
file = URI.open("https://img.freepik.com/foto-gratis/retrato-mujer-caucasica-sonriendo_53876-24998.jpg?w=1480&t=st=1694302222~exp=1694302822~hmac=c0e06015c620be53e1b77408adb3e8ee522e2f9f4417f848425e77cd04cfa2e8")
user5 = User.new(email: "natalia@gmail.com", password: "123456", address: "calle 123", name: "Natalia")
user5.photo.attach(io: file, filename: "natalia.png", content_type: "image/png")
user5.save!

puts "creando usuario 6..."
file = URI.open("https://img.freepik.com/foto-gratis/cerrar-hombre-sonriente-tomando-selfie_23-2149155156.jpg?w=1800&t=st=1694302622~exp=1694303222~hmac=b49457a13f31fe5cbf95cf2fbfcb6733bb6b15932079b47b021f7cf88ddc8425")
user6 = User.new(email: "sebastian@gmail.com", password: "123456", address: "calle 123", name: "Sebastián")
user6.photo.attach(io: file, filename: "sebastián.png", content_type: "image/png")
user6.save!

puts "creando usuario 7..."
file = URI.open("https://img.freepik.com/foto-gratis/persona-origen-indio-divirtiendose_23-2150285311.jpg?w=826&t=st=1694302689~exp=1694303289~hmac=b2c33dcf6e6944bf98f8821fac33e4447e2759673f6facf4367311441b4b5199")
user7 = User.new(email: "omar@gmail.com", password: "123456", address: "calle 123", name: "Omar")
user7.photo.attach(io: file, filename: "omar.png", content_type: "image/png")
user7.save!

puts "creando usuario 8..."
file = URI.open("https://img.freepik.com/foto-gratis/hombre-sonriente-pie-edificio-mirando-directamente-camara_1262-20433.jpg?w=1800&t=st=1694302766~exp=1694303366~hmac=ca9426fd6fdb06b6defd637a3498e782eaca83f9119d75ba6ef481de56f01adc")
user8 = User.new(email: "mario@gmail.com", password: "123456", address: "calle 123", name: "Mario")
user8.photo.attach(io: file, filename: "mario.png", content_type: "image/png")
user8.save!

puts "creando usuario 9..."
file = URI.open("https://img.freepik.com/foto-gratis/hombre-medio-tiro-sonriente-posando_23-2148243624.jpg?w=1800&t=st=1694302768~exp=1694303368~hmac=32b79f5392374deecbd4a9118c73ed74bb4e8637812951fa238a735fa2d99e7b")
user9 = User.new(email: "rodrigo@gmail.com", password: "123456", address: "calle 123", name: "Rodrigo")
user9.photo.attach(io: file, filename: "rodrigo.png", content_type: "image/png")
user9.save!

puts "creando usuario 10..."
file = URI.open("https://img.freepik.com/foto-gratis/tiro-medio-anciano-posando_23-2148985394.jpg?w=1800&t=st=1694302941~exp=1694303541~hmac=e7726a7d4045c24606bd5b1da8e3ff5d204ccd65602a21b78696c6557400d772")
user10 = User.new(email: "javier@gmail.com", password: "123456", address: "calle 123", name: "Javier")
user10.photo.attach(io: file, filename: "javier.png", content_type: "image/png")
user10.save!

puts "creando usuario 11..."
file = URI.open("https://img.freepik.com/foto-gratis/feliz-mujer-madura-otono-parque_1398-202.jpg?w=826&t=st=1694303002~exp=1694303602~hmac=21b72c25bc05a2d8a7cf31fb7761a473be3a070c144dbdb6f7231031990753e9")
user11 = User.new(email: "tamara@gmail.com", password: "123456", address: "calle 123", name: "Tamara")
user11.photo.attach(io: file, filename: "tamara.png", content_type: "image/png")
user11.save!

puts "creando usuario 12..."
file = URI.open("https://images.unsplash.com/photo-1573497019940-1c28c88b4f3e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2787&q=80")
user12 = User.new(email: "carmen@gmail.com", password: "123456", address: "calle 123", name: "Carmen")
user12.photo.attach(io: file, filename: "carmen.png", content_type: "image/png")
user12.save!

puts "creando usuario 13..."
file = URI.open("https://img.freepik.com/foto-gratis/hombre-sonriendo-feria-mercado_23-2150771035.jpg?w=2000&t=st=1694303363~exp=1694303963~hmac=7b1c19e2b0e1ce81407f0f7a48337a17c19e93c1d901173bbc8094a1e8b8f19e")
user13 = User.new(email: "antonio@gmail.com", password: "123456", address: "calle 123", name: "Antonio")
user13.photo.attach(io: file, filename: "antonio.png", content_type: "image/png")
user13.save!

puts "creando usuario 14..."
file = URI.open("https://img.freepik.com/foto-gratis/mujer-joven-feliz-que-toma-foto-selfie-al-aire-libre_1262-19167.jpg?w=1800&t=st=1694303443~exp=1694304043~hmac=c29fe742b9f09a1a78b555dca6b613b93240c002b6ef9ccfd6d0bb1dc0a0c63b")
user14 = User.new(email: "maria@gmail.com", password: "123456", address: "calle 123", name: "María")
user14.photo.attach(io: file, filename: "maría.png", content_type: "image/png")
user14.save!

puts "creando usuario 15..."
file = URI.open("https://img.freepik.com/foto-gratis/primer-plano-feliz-alegre-barbudo-posando-interior_74855-2696.jpg?w=1800&t=st=1694303554~exp=1694304154~hmac=43abdeea8e0695a49d3623dbea0ffd34d149e3f0cfd6addbe01d1033ee8a74b3")
user15 = User.new(email: "julio@gmail.com", password: "123456", address: "calle 123", name: "Julio")
user15.photo.attach(io: file, filename: "julio.png", content_type: "image/png")
user15.save!

puts "creando usuario 16..."
file = URI.open("https://img.freepik.com/foto-gratis/joven-tomando-selfie-naturaleza_23-2148518179.jpg?w=1800&t=st=1694303658~exp=1694304258~hmac=da303caf53e193875bfad17c33b01e37263d24ae777b346017ccf0f18905ac2a")
user16 = User.new(email: "david@gmail.com", password: "123456", address: "calle 123", name: "David")
user16.photo.attach(io: file, filename: "david.png", content_type: "image/png")
user16.save!

puts "creando usuario 17..."
file = URI.open("https://img.freepik.com/foto-gratis/selfie-retrato-videollamada_23-2149186120.jpg?w=1800&t=st=1694303760~exp=1694304360~hmac=4a834bb5d47faf923c3d2ea71a8464916cb6bae118d8b959fb73172a6b260c8b")
user17 = User.new(email: "lucia@gmail.com", password: "123456", address: "calle 123", name: "Lucia")
user17.photo.attach(io: file, filename: "lucía.png", content_type: "image/png")
user17.save!

puts "creando usuario 18..."
file = URI.open("https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2787&q=80")
user18 = User.new(email: "leonel@gmail.com", password: "123456", address: "calle 123", name: "Leonel")
user18.photo.attach(io: file, filename: "leonel.png", content_type: "image/png")
user18.save!

puts "creando usuario 19..."
file = URI.open("https://images.unsplash.com/photo-1618508035424-73ad1a15006c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2865&q=80")
user19 = User.new(email: "sandra@gmail.com", password: "123456", address: "calle 123", name: "Sandra")
user19.photo.attach(io: file, filename: "sandra.png", content_type: "image/png")
user19.save!

puts "creando usuario 20..."
file = URI.open("https://img.freepik.com/foto-gratis/joven-latina-sonriendo-feliz-pie-ciudad_839833-16273.jpg?w=1800&t=st=1694304533~exp=1694305133~hmac=56ce1c312d259a9b38ec68d3ef5154fa63f4ac4fac38e40ce5e8b1eb9617d197")
user20 = User.new(email: "diana@gmail.com", password: "123456", address: "calle 123", name: "Diana")
user20.photo.attach(io: file, filename: "diana.png", content_type: "image/png")
user20.save!

# SERVICIOS

puts "creando servicio 1..."
service1 = Service.new(user_id: user1.id, category_id: category1.id, description: "Especialista en mobiliario de cocina")
service1.save!

puts "creando servicio 2..."
service2 = Service.new(user_id: user1.id, category_id: category2.id, description: "Especialista en fugas")
service2.save!

puts "creando servicio 3..."
service3 = Service.new(user_id: user1.id, category_id: category3.id, description: "Especialista en plantas de interior")
service3.save!

puts "creando servicio 4..."
service4 = Service.new(user_id: user1.id, category_id: category4.id, description: "Especialista en tableros")
service4.save!


puts "creando servicio 5..."
service4 = Service.new(user_id: user2.id, category_id: category1.id, description: "Especialista en tableros")
service4.save!

puts "creando servicio 6..."
service4 = Service.new(user_id: user3.id, category_id: category1.id, description: "Especialista en tableros")
service4.save!

puts "creando request 1..."
request1 = Request.new(user_id: user2.id, status: "finalizada", service_id: service1.id, description: "se rompieron mis repisas", start_date: Date.new(2023,9,9), end_date: Date.new(2023,10,10), budget: 0)

request1.save!

puts "creando request 2..."
request2 = Request.new(user_id: user3.id, status: "enviada", service_id: service1.id, description: "se rompieron mis ventanas", start_date: Date.new(2023,9,9), end_date: Date.new(2023,10,10), budget: 0)
request2.save!

puts "creando review 1 para fixer"
review1 = Review.new(user_id: request1.user_id, request_id: request1.id, content: "epetacular", rating: 4)
review1.save!

puts "creando review 2 para fixer"
review2 = Review.new(user_id: request1.user_id, request_id: request1.id, rating: 4)
review2.save!
