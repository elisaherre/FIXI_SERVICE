require "open-uri"

if Rails.env.development?
  Category.destroy_all
  User.destroy_all
  Service.destroy_all
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
service2 = Service.new(user_id: user2.id, category_id: category2.id, description: "Especialista en fugas")
service2.save!

puts "creando servicio 3..."
service3 = Service.new(user_id: user1.id, category_id: category3.id, description: "Especialista en plantas de interior")
service3.save!
