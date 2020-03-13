user7 = User.new(username: "Frans", email: "frans@example.com" , password: "Password", password_confirmation: 'Password')
img = open('jad.jpg')
user7.avatar.attach(io: img, filename: 'avatar.jpg', content_type: 'image/jpg')
user7.save

# create sign up action
sign_up_action = Action.create(user: user7, count: 1, created_at: 1.month.ago, name: 'sign_up')
# create car
# generate a car
audi = Car.create(model: 'A6', brand: 'Audi', year: 2014, user: user7, mpg: 35.2)
# create car add action
car_ac = Action.create(user: user7, car: audi, count: 1, name: 'add_car')

# generate some earn tree actions
(1..8).each do |i|
  action = Action.create(user: user7, count: rand(200..500), created_at: i.days.ago, name: 'earn_tree')
end