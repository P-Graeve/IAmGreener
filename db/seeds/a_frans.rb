user7 = User.new(username: "Frans", email: "frans@example.com" , password: "Password", password_confirmation: 'Password')
img = open('https://res-2.cloudinary.com/crunchbase-production/image/upload/c_thumb,h_256,w_256,f_auto,g_faces,z_0.7,q_auto:eco/ggbjbwmdzcrtu9wwgf6u')
user7.avatar.attach(io: img, filename: 'avatar.png', content_type: 'image/png')
user7.save

# create sign up action
sign_up_action = Action.create(user: user7, count: 1, created_at: 1.month.ago, name: 'sign_up')
# create car
# generate a car
audi = Car.create(model: 'A6', brand: 'Audi', year: 2014, user: user7, mpg: 26.3)
# create car add action
car_ac = Action.create(user: user7, car: audi, count: 1, name: 'add_car')

# generate some earn tree actions
(1..8).each do |i|
  action = Action.create(user: user7, count: rand(200..500), created_at: i.days.ago, name: 'earn_tree')
end