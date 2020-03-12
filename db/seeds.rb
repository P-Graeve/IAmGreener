require "open-uri"

puts 'Cleaning DB...'
Notification.destroy_all
Friendship.destroy_all
Action.destroy_all
Badge.destroy_all
Tip.destroy_all
Challenge.destroy_all
Car.destroy_all
User.destroy_all
Category.destroy_all

# load all seeds in seeds folder
Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each do |seed|
  load seed
end

puts "Success! You have #{Car.count} car, #{Notification.count} notifications, #{Action.count} actions, #{Friendship.count} friendships"
puts "Login: Frans, Password"









