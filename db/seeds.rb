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

user5 = User.new(username: "Frans", email: "frans@example.com" , password: "Password", password_confirmation: 'Password', tree_score: 453)
img = open('https://images.unsplash.com/photo-1472711795975-42c5b4ee828c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
user5.avatar.attach(io: img, filename: 'avatar.png', content_type: 'image/png')
user5.save

# generate some fake notifications
4.times do
  notif = Notification.new(message: Faker::Hacker.say_something_smart)
  notif.user = user5
  notif.save
end

# generate seeds
water = Category.create(name: 'Water');
home = Category.create(name: 'Home');
waste = Category.create(name: 'Waste');
transportation = Category.create(name: 'Transportation');
energy = Category.create(name: 'Energy');
food = Category.create(name: 'Food');

# generate tips
Tip.create(category: water, description: 'Running taps contribute to water waste, running the tap to rinse fresh produce can use up to 10L of water per minute!. Avoid unnecessary waste by putting a plug in the sink or using a bowl when cleaning fruit and veg. The water you collect can be used on your garden.', title: 'Plug the sink or use a bowl when you are washing vegies.');
Tip.create(category: water, description: 'Showers make up 22% of total household water use. By swapping to water efficient shower heads, households can save up to 20, 000L of water per year. When selecting a shower head look for the stars on the WELS label the more stars, the more water you will save. Also look at the flow rate (litres per minute) as this can vary substantially.', title: 'Swap to a water efficient showerhead.');
Tip.create(category: water, description: 'Washing machines account for 16% of all water used inside the average home. Reducing your washing by just one load a week could save almost 2,600L each year! Look to upgrade to a water efficient machine which use half as much water as the older models, less energy and they are much gentler on your clothes!', title: 'Save 50L of water when you reduce your washing by one load a week');

Tip.create(category: waste, description: 'Since recycling standards vary from place to place, find out the specific rules for your area.', title: 'Get to know the rules of recycling.');


Challenge.create(category: water, description: 'Leaving the tap running when brushing your teeth wastes up to 10L per minute. Our surveys show 8 out of 10 people have changed their habit and are now turning the tap off. Are you helping to make a difference?', title: 'Brush your teeth with the tap off!');
Challenge.create(category: water, description: 'Around 9% of total household water use goes down the toilet! When you can, choose the half flush when you use the loo. WELS 4 star toilets use 3L for half flush and 4.5 for full flush.', title: 'Reduce water waste, choose the half flush!');
Challenge.create(category: water, description: 'Almost 1/4 of household water is used in the shower. Cutting your shower time by just 2 minutes can result in a water saving of up to 30%. Try using a shower timer or your favourite 4 minute song to time your showers.', title: 'Save water and energy by reducing shower times to 4 minutes.');

# generate a car
Car.create(model: 'A6', brand: 'Audi', year: 2014, user: user5, mpg: 26.3)

puts "Success! You have #{Car.count} car, #{Notification.count} notifications"
puts "Login: Frans, Password"
