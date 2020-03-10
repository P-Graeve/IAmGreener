require "open-uri"

puts 'Cleaning DB...'
Friendship.destroy_all
Action.destroy_all
Tip.destroy_all
ProfileBadge.destroy_all
Badge.destroy_all
Notification.destroy_all
Challenge.destroy_all
Car.destroy_all
User.destroy_all
Category.destroy_all

# load all seeds in seeds folder
Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each do |seed|
  load seed
end

puts "Success! You have #{Car.count} car, #{Notification.count} notifications, #{Action.count} actions"
puts "Login: Frans, Password"









