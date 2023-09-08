require "open-uri"

if Rails.env.development?
  Review.destroy_all
  Request.destroy_all
  Service.destroy_all
  Category.destroy_all
  User.destroy_all
end

puts "creando categoría 1..."
category1 = Category.new(name: "carpintería")
category1.save!

puts "creando categoría 2..."
category2 = Category.new(name: "plomería")
category2.save!

puts "creando categoría 3..."
category3 = Category.new(name: "jardinería")
category3.save!

puts "creando categoría 4..."
category4 = Category.new(name: "electricidad")
category4.save!

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
