# generate some fake notifications
notif1 = Notification.new(message: "Matthijs saved water by skipping the shower today!")#Faker::Hacker.say_something_smart)
notif1.user = User.last
notif1.save

notif2 = Notification.new(message: "Philippa wrapped her lunch in a beeswax wrapping paper.")#Faker::Hacker.say_something_smart)
notif2.user = User.last
notif2.save

notif3 = Notification.new(message: "Svenia picked up trash.")#Faker::Hacker.say_something_smart)
notif3.user = User.last
notif3.save

notif4 = Notification.new(message: "Lisa hasn't bought anything with plastic on it in 3 days!")#Faker::Hacker.say_something_smart)
notif4.user = User.last
notif4.save