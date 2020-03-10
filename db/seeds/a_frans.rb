user7 = User.new(username: "Frans", email: "frans@example.com" , password: "Password", password_confirmation: 'Password')
img = open('https://images.unsplash.com/photo-1472711795975-42c5b4ee828c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
user7.avatar.attach(io: img, filename: 'avatar.png', content_type: 'image/png')
user7.save

# create sign up action
sign_up_action = Action.new(user: user7, count: 1, created_at: 1.month.ago)
sign_up_action.sign_up!

# create car
# generate a car
audi = Car.create(model: 'A6', brand: 'Audi', year: 2014, user: user7, mpg: 26.3)
# create car add action
car_ac = Action.new(user: user7, car: audi, count: 1)
car_ac.add_car!

# generate some earn tree actions
(1..8).each do |i|
  action = Action.new(user: user7, count: rand(200..500), created_at: i.days.ago)
  action.earn_tree!
end