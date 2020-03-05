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

user2 = User.new(username: "Frans", email: "frans@example.com" , password: "Password", password_confirmation: 'Password', tree_score: 453)
img = open('https://images.unsplash.com/photo-1472711795975-42c5b4ee828c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
user2.avatar.attach(io: img, filename: 'avatar.png', content_type: 'image/png')
user2.save

# generate some fake notifications
#4.times do
  notif1 = Notification.new(message: "Matthijs saved water by skipping the shower today!")#Faker::Hacker.say_something_smart)
  notif1.user = user2
  notif1.save

  notif2 = Notification.new(message: "Philippa wrapped her lunch in a beeswax wrapping paper.")#Faker::Hacker.say_something_smart)
  notif2.user = user2
  notif2.save

  notif3 = Notification.new(message: "Svenia picked up trash.")#Faker::Hacker.say_something_smart)
  notif3.user = user2
  notif3.save

  notif4 = Notification.new(message: "Lisa hasn't bought anything with plastic on it in 3 days!")#Faker::Hacker.say_something_smart)
  notif4.user = user2
  notif4.save
#end



puts "Success! You have #{User.count} users, #{Notification.count} notifications"
