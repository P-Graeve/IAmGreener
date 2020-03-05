# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts 'Cleaning DB...'
Notification.destroy_all
Car.destroy_all
User.destroy_all

user3 = User.new(username: "Frans", email: "frans@example.com" , password: "Password", password_confirmation: 'Password', tree_score: 453)
img = open('https://images.unsplash.com/photo-1472711795975-42c5b4ee828c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
user3.avatar.attach(io: img, filename: 'avatar.png', content_type: 'image/png')
user3.save

# generate some fake notifications
4.times do
  notif = Notification.new(message: Faker::Hacker.say_something_smart)
  notif.user = user3
  notif.save
end

# generate a car
Car.create(model: 'A6', brand: 'Audi', year: 2014, user: user3, mpg: 26.3)

puts "Success! You have #{Car.count} car, #{Notification.count} notifications"
puts "Login: Frans, Password"
