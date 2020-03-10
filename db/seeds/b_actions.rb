# generate actions for earning trees
(1..8).each do |i|
  action = Action.new(user: User.last, count: rand(200..500), created_at: i.days.ago)
  action.earn_tree!
end