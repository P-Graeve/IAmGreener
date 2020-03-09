require "open-uri"

puts 'Cleaning DB...'
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

# create car action
car_action = Action.new(user: user6, )

# generate actions for earning trees
(1..8).each do |i|
  action = Action.new(user: user6, count: rand(0...200), created_at: i.days.ago)
  action.earn_tree!
end

puts "Success! You have #{Car.count} car, #{Notification.count} notifications, #{Action.count} actions"
puts "Login: Frans, Password"


badge1 = Badge.create(name: 'Started saving the world', description: 'registered to I am greener', icon_url: '012-reward-1.svg')
badge2 = Badge.create(name: 'Trash Panda', description: 'picked up other peoples trash', icon_url: '010-shield-1.svg')
badge3 = Badge.create(name: 'Zero Waste Queen', description: 'refuses buying packaged food', icon_url: '004-medal.svg')

pbadge1 = ProfileBadge.create(user: user6, badge: badge1, stars: 2)
pbadge2 = ProfileBadge.create(user: user6, badge: badge2, stars: 1)
pbadge3 = ProfileBadge.create(user: user6, badge: badge3, stars: 3)









