user4 = User.new(username: "John", email: "John@example.com" , password: "Password", password_confirmation: 'Password')
img = open('https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
user4.avatar.attach(io: img, filename: 'avatar.png', content_type: 'image/png')
user4.save

# create sign up action
sign_up_action = Action.new(user: user4, count: 1, created_at: 1.month.ago)
sign_up_action.sign_up!

# create car
# generate a car
bentley = Car.create(model: 'Flying Spur', brand: 'Bentley', year: 2015, user: user4, mpg: 17.0)
# create car add action
car_ac = Action.new(user: user4, car: bentley, count: 1)
car_ac.add_car!

user5 = User.new(username: "Lucy", email: "lucy@example.com" , password: "Password", password_confirmation: 'Password')
img = open('https://images.unsplash.com/photo-1542103749-8ef59b94f47e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
user5.avatar.attach(io: img, filename: 'avatar.png', content_type: 'image/png')
user5.save

# create sign up action
sign_up_action = Action.new(user: user5, count: 1, created_at: 1.month.ago)
sign_up_action.sign_up!

# create car
# generate a car
bmw = Car.create(model: '6Series', brand: 'BMW', year: 2016, user: user5, mpg: 22.5)
# create car add action
car_ac = Action.new(user: user5, car: bmw, count: 1)
car_ac.add_car!

user7 = User.new(username: "Carla", email: "carla@example.com" , password: "Password", password_confirmation: 'Password')
img = open('https://images.unsplash.com/photo-1554151228-14d9def656e4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
user7.avatar.attach(io: img, filename: 'avatar.png', content_type: 'image/png')
user7.save

# create sign up action
sign_up_action = Action.new(user: user7, count: 1, created_at: 1.month.ago)
sign_up_action.sign_up!

# create car
# generate a car
mini = Car.create(model: 'Cooper', brand: 'Mini', year: 2018, user: user7, mpg: 30.7)
# create car add action
car_ac = Action.new(user: user7, car: mini, count: 1)
car_ac.add_car!

user8 = User.new(username: "Sophie", email: "sopie@example.com" , password: "Password", password_confirmation: 'Password')
img = open('https://images.unsplash.com/photo-1491349174775-aaafddd81942?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
user8.avatar.attach(io: img, filename: 'avatar.png', content_type: 'image/png')
user8.save

# create sign up action
sign_up_action = Action.new(user: user8, count: 1, created_at: 1.month.ago)
sign_up_action.sign_up!

# create car
# generate a car
ford = Car.create(model: 'Fiesta', brand: 'Ford', year: 2016, user: user8, mpg: 31.7)
# create car add action
car_ac = Action.new(user: user8, car: ford, count: 1)
car_ac.add_car!

user9 = User.new(username: "Jack", email: "jack@example.com" , password: "Password", password_confirmation: 'Password')
img = open('https://images.unsplash.com/photo-1500048993953-d23a436266cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
user9.avatar.attach(io: img, filename: 'avatar.png', content_type: 'image/png')
user9.save

# create sign up action
sign_up_action = Action.new(user: user9, count: 1, created_at: 1.month.ago)
sign_up_action.sign_up!

# create car
# generate a car
audi = Car.create(model: 'A3', brand: 'Audi', year: 2007, user: user9, mpg: 7.3)
# create car add action
car_ac = Action.new(user: user9, car: audi, count: 1)
car_ac.add_car!


