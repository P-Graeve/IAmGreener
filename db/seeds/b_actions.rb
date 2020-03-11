# generate some trees for Frans
frans = User.find_by(username: 'Frans')
(1..8).each do |i|
  action = Action.create(count: rand(200..500), name: 'earn_tree', user: frans, created_at: i.days.ago)
end