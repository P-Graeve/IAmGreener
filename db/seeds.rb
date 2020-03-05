# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts 'Cleaning DB...'
Notification.destroy_all
Car.destroy_all
ProfileBadge.destroy_all
User.destroy_all

user6 = User.new(username: "Frans", email: "frans@example.com" , password: "Password", password_confirmation: 'Password', tree_score: 453)
img = open('https://images.unsplash.com/photo-1472711795975-42c5b4ee828c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
user6.avatar.attach(io: img, filename: 'avatar.png', content_type: 'image/png')
user6.save

# generate some fake notifications
#4.times do
notif1 = Notification.new(message: "Matthijs saved water by skipping the shower today!")#Faker::Hacker.say_something_smart)
notif1.user = user6
notif1.save

notif2 = Notification.new(message: "Philippa wrapped her lunch in a beeswax wrapping paper.")#Faker::Hacker.say_something_smart)
notif2.user = user6
notif2.save

notif3 = Notification.new(message: "Svenia picked up trash.")#Faker::Hacker.say_something_smart)
notif3.user = user6
notif3.save

notif4 = Notification.new(message: "Lisa hasn't bought anything with plastic on it in 3 days!")#Faker::Hacker.say_something_smart)
notif4.user = user6
notif4.save
#end

# generate seeds
water = Category.create(name: 'Water');
home = Category.create(name: 'Home');
waste = Category.create(name: 'Waste');
transportation = Category.create(name: 'Transportation');
energy = Category.create(name: 'Energy');
food = Category.create(name: 'Food');

# generate tips
Tip.create(image_url: 'https://images.unsplash.com/photo-1564518823771-494a12735793?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', category: water, description: 'Running taps contribute to water waste, running the tap to rinse fresh produce can use up to 10L of water per minute!. Avoid unnecessary waste by putting a plug in the sink or using a bowl when cleaning fruit and veg. The water you collect can be used on your garden.', title: 'Plug the sink or use a bowl when you are washing vegies.');
Tip.create(image_url: 'https://images.unsplash.com/photo-1571781418606-70265b9cce90?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', category: water, description: 'Showers make up 22% of total household water use. By swapping to water efficient shower heads, households can save up to 20, 000L of water per year. When selecting a shower head look for the stars on the WELS label the more stars, the more water you will save. Also look at the flow rate (litres per minute) as this can vary substantially.', title: 'Swap to a water efficient showerhead.');
Tip.create(image_url: 'https://images.unsplash.com/photo-1510551310160-589462daf284?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',category: water, description: 'Washing machines account for 16% of all water used inside the average home. Reducing your washing by just one load a week could save almost 2,600L each year! Look to upgrade to a water efficient machine which use half as much water as the older models, less energy and they are much gentler on your clothes!', title: 'Save 50L of water when you reduce your washing by one load a week');

Tip.create(image_url: 'https://images.unsplash.com/photo-1517319725296-466c84bd7d54?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', category: waste, description: 'Since recycling standards vary from place to place, find out the specific rules for your area.', title: 'Get to know the rules of recycling.');
Tip.create(image_url: 'https://images.unsplash.com/photo-1524778219663-26b4a0ccc132?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', category: waste, description: 'Description: If your mailbox is overloaded with catalogs and junk mail each day, take a few minutes to cancel subscriptions and stop unsolicited junk mail.', title: 'Cancel unnecessary mail.');

Tip.create(image_url: 'https://images.unsplash.com/photo-1535813547-99c456a41d4a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', category: energy, description: 'Traditional incandescent light bulbs consume an excessive amount of electricity and must be replaced more often than their energy efficient alternatives. Halogen incandescent bulbs, compact fluorescent lights (CFLs), and light-emitting diode bulbs (LEDs) use anywhere from 25-80% less electricity and last three to 25 times longer than traditional bulbs. Although energy efficient bulbs are more expensive off the shelf, their efficient energy use and longer service lives mean that they cost less in the long run. Energy efficient bulbs are the clear winners in terms of their environmental and financial benefits.', title: 'Replace your light bulbs.');
Tip.create(image_url: 'https://images.unsplash.com/photo-1546610848-7ad7a33af206?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', category: energy, description: 'Windows are a significant source of energy waste, which can amount to 10-25% of your total heating bill. To prevent heat loss through your windows, you can replace single-pane windows with double-pane ones.\nFor homes in cold regions, gas-filled windows with “low-e” coatings can significantly reduce your heating expenses. In addition, interior or exterior storm windows can reduce unnecessary heat loss by ten to 20 percent. You should especially consider storm windows if your region experiences frequent extreme weather events.\nIn warmer climates, heat gain through windows may be a problem. In addition to minimizing heat loss, low-e coatings on windows can reduce heat gain by reflecting more light and lowering the amount of thermal energy diffused into your home. Depending on the climate where you live, energy efficient windows can save you $20-$95 each year on your utility bills. Window shades, shutters, screens, and awnings can also provide an extra layer of insulation between your home and external temperatures.', title: 'Install energy efficient windows.');

Tip.create(image_url: 'https://images.unsplash.com/photo-1529310399831-ed472b81d589?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60', category: home, description: 'We all know that old incandescent light bulbs are very bad for the environment. But how bad are they exactly? Well, it turns out that 90% of their energy consumption is wasted to heat! As supposed to LED lights, which only consumes a quarter of what an incandescent light emits. Also LED’s last up to 25 times longer. They might be more expensive, but they are definitely worth the investment!', title: ' Light bulbs.');
Tip.create(image_url: 'https://upload.wikimedia.org/wikipedia/commons/5/5e/Heat_wave_refresh_it_with_water.jpg', category: home, description: 'According to a new report (https://www.seforall.org/sites/default/files/SEforALL_CoolingForAll-Report_0.pdf) 10 percent of the planet’s warming now comes from cooling technologies. Airconditioning is the main culprit for that. It’s like a vicious cycle: the world is warming up, so we make more use of airconditioning, so we emit more greenhouse gases, so the planet becomes warmer and so forth… So how can we keep cool but avoiding airconditioning? Obviously you can dress lighter, put on a light t-shirt and airy shorts can already help a lot. Also eating lighter cold foods as salads, low-fat diary or even eating spicy, can lower your body temperature. Fans use a lot less electricity, so make use of those! And if you can’t take it anymore, just go to the nearest Starbucks, they have the best airconditioning in town.', title: 'How to keep cool during a heatwave.');

Tip.create(image_url: 'https://i.pinimg.com/originals/30/7c/b5/307cb574a92b913ce2c678a975d5b84b.jpg', category: transportation, description: 'Really really bad! First of all, there is space: A car takes a huge amount of space that is both unnecessary and inconvenient. It also lacks movement in the body, which can make you fat if you don’t do any other physical activity. If you still need to drive, consider the following tips: \n1 Take care of your car\nKeeping tires inflated properly can increase fuel efficiency by 3 percent, making sure your car is properly maintained by another 4 percent. Also don’t forget to remove any unnecessary weight from your car.\n2 Reduce driving by combining errands\n3 On longer trips, turn on cruise control which can save gas\n4 Use less airconditioning when you drive.', title: 'How bad is driving for the environment exactly?');
Tip.create(image_url: 'https://images.unsplash.com/photo-1545922016-87c93aaca2ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60', category: transportation, description: ' Flying is one of the most polluting things you can do. In 2018 air travel contributed to 2.4% of all global emissions. As international tourism becomes more and more popular and more people can afford air travel to visit further away places, this number is only going to increase. Instead, vacations closer to home can be just as fun! If you do need to travel, consider these tips:\n1 Try to keep layovers to a minimum as landings and takeoffs require more energy.\n2 Go economy class. Business class is responsible for almost 3 times as many emissions as economy because in economy, the flight’s carbon emissions are shared among more passengers. First class can result in nine times more carbon emissions!\n3 if you can’t avoid flying, offset the carbon emissions of your travel.', title: 'Air travel');

Tip.create(image_url: 'https://images.unsplash.com/photo-1576719218362-01af43ab192a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', category: food, description: 'Most people tend to buy more food than they need.Make a point to use up all the food you purchased during the last trip to the market before buying more groceries. Additionally, try making a list of items that you need to buy and stick to that list. This will help you reduce impulse buying and reduce food waste as well.', title: 'Shop Smart');
Tip.create(image_url: 'https://images.unsplash.com/photo-1545898073-346e42dc7357?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1296&q=60', category: food, description: 'Improper storage leads to a massive amount of food waste. Many people are unsure how to store fruits and vegetables, which can lead to premature ripening and, eventually, rotten produce. For instance, potatoes, tomatoes, garlic, cucumbers and onions should never be refrigerated. These items should be kept at room temperature. Separating foods that produce more ethylene gas from those that don’t is another great way to reduce food spoilage. Ethylene promotes ripening in foods and could lead to spoilage.', title: 'Store Food Correctly');


Challenge.create(image_url: 'https://images.unsplash.com/photo-1521207418485-99c705420785?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', category: water, description: 'Leaving the tap running when brushing your teeth wastes up to 10L per minute. Our surveys show 8 out of 10 people have changed their habit and are now turning the tap off. Are you helping to make a difference?', title: 'Brush your teeth with the tap off!');
Challenge.create(image_url: 'https://images.unsplash.com/photo-1556228149-d8f523f77b5a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', category: water, description: 'Around 9% of total household water use goes down the toilet! When you can, choose the half flush when you use the loo. WELS 4 star toilets use 3L for half flush and 4.5 for full flush.', title: 'Reduce water waste, choose the half flush!');
Challenge.create(image_url: 'https://images.unsplash.com/photo-1561361398-d1f7b6cfee79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', category: water, description: 'Almost 1/4 of household water is used in the shower. Cutting your shower time by just 2 minutes can result in a water saving of up to 30%. Try using a shower timer or your favourite 4 minute song to time your showers.', title: 'Save water and energy by reducing shower times to 4 minutes.');

Challenge.create(image_url: 'https://images.unsplash.com/photo-1582765114728-428aa4d1ff36?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', category: waste,description: 'Water bottles and paper coffee cups are huge wastes of material. Buy a durable water bottle and a cute coffee thermos so you can take your beverages wherever you please. You’ll find yourself feeling a lot more hydrated and a lot less wasteful.', title: 'Stop buying plastic water bottles.');
Challenge.create(image_url: 'https://images.unsplash.com/photo-1563635707796-b4b9d6007a8c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', category: waste, description: 'Once you start buying only what you need, take it to the next level by storing food properly, which will extend its life and keep things fresh for as long as possible. Invest in some quality airtight containers for things like baking ingredients, cereals, and other things that can stale quickly. If you buy loose food items from farmer’s markets or bulk bins at stores like Whole Foods, reusable containers are especially important to have in your kitchen.', title: 'Start relying on reusable containers');

Challenge.create(image_url: '', category: energy, description: 'To reduce energy consumption in your home, you do not necessarily need to go out and purchase energy efficient products. Energy conservation can be as simple as turning off lights or appliances when you do not need them. You can also use energy-intensive appliances less by performing household tasks manually, such as hang-drying your clothes instead of putting them in the dryer, or washing dishes by hand. The behavior adjustments that have the highest potential for utility savings are turning down the heat on your thermostat in the winter and using your air conditioner less in the summer. Heating and cooling costs constitute nearly half of an average home’s utility bills, so these reductions in the intensity and frequency of heating and cooling offer the greatest savings.', title: 'Adjust your day-to-day behaviors');
Challenge.create(image_url: 'https://images.unsplash.com/photo-1508920291026-c344bbfca1ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', category: energy, description: '“Phantom loads,” or the electricity used by electronics when they are turned off or in standby mode, are a major source of energy waste. In fact, it is estimated that 75% of the energy used to power household electronics is consumed when they are switched off, which can cost you up to $200 per year. Smart power strips, also known as advanced power strips, eliminate the problem of phantom loads by shutting off the power to electronics when they are not in use. Smart power strips can be set to turn off at an assigned time, during a period of inactivity, through remote switches, or based on the status of a “master” device.', title: 'Use smart power strips');

Challenge.create(image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQwATm_sNFXqj0GPHfhMpI8Mw0Af8CXyQYAnBMNrbZFuUy4mXB5', category: home, description: 'This will save both the planet and your wallet! Do an energy audit of your home. This will show how you use or waste energy and help identify ways to be more energy efficient.', title: 'Energy Audit');
Challenge.create(image_url: 'https://media.defense.gov/2008/Sep/18/2000678565/780/780/0/080918-F-2580A-001.JPG', category: home, description: 'Did you know that incandescent lights waste 90% of their energy as heat? Instead, use LED lights, these only use a quarter of that energy and can last up to 25 times longer! They might be more expensive, but definitely worth the investments. Switch those bulbs out!', title: 'Change those bulbs!');

Challenge.create(image_url: 'https://cdn.pixabay.com/photo/2019/08/02/19/02/transportation-4380326_960_720.jpg', category: transportation, description: 'Today you are allowed to only take the train, bus or bike to go to work! (the leg wagon is also allowed).', title: 'Only take public transport today!');
Challenge.create(image_url: 'https://upload.wikimedia.org/wikipedia/commons/9/9a/Daimler_4.0_%281990%29_trunk.jpg', category: transportation, description: 'To transport extra weight, you are emitting more gas. You are carrying unnecessary items every day to work and back! Which means that unnecessarily, you are emitting way more than needed. Clean out that trunk, get rid of unnecessary items. You will thank yourself later.', title: '');

Challenge.create(image_url: 'https://images.unsplash.com/photo-1490818387583-1baba5e638af?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60', category: food, description: ' Overeating is a problem for many people.\nMaking sure your portion sizes stay within a healthy range doesn’t just help keep your weight down, it also reduces food waste.\nWhile you may not think twice about scraping the leftover food on your plate into the trash, remember that food waste has a major impact on the environment.\nBeing more mindful of how hungry you actually are and practicing portion control are great ways to reduce food waste.', title: 'Keep Your Serving Sizes in Check');
Challenge.create(image_url: 'https://images.unsplash.com/photo-1582803824122-f25becf36ad8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', category: food, description: ' “Sell by” and “expires on” are just two of the many confusing terms companies use on food labels to let consumers know when a product will most likely go bad.\nThe truth is, most food that has just passed its expiration date is still safe to eat.\n“Sell by” is used to inform retailers when the product should be sold or removed from the shelves. “Best by” is a suggested date that consumers should use their products by.\nNeither of these terms means that the product is unsafe to eat after the given date.\nWhile many of these labels are ambiguous, “use by” is the best one to follow. This term means that the food may not be at its best quality past the listed date. A movement is now underway to make the food expiration labeling system more clear for consumers. In the meantime, use your best judgment when deciding whether food that is slightly past its expiration date is safe to eat.', title: 'Understand Expiration Dates');




# generate a car
Car.create(model: 'A6', brand: 'Audi', year: 2014, user: user6, mpg: 26.3)

# generate daily progress seeds
(1..7).each do |i|
  DailyProgress.create(user: user6, tree_amount: rand(0...500), daily_challenge_completed: true, challenge: Challenge.all.sample, date: i.days.ago.strftime('%d-%m-%y'))
end

puts "Success! You have #{Car.count} car, #{Notification.count} notifications, #{DailyProgress.count} daily progresses"
puts "Login: Frans, Password"


badge1 = Badge.create(name: 'Started saving the world', description: 'registered to I am greener', icon_url: '012-reward-1.svg')
badge2 = Badge.create(name: 'Trash Panda', description: 'picked up other peoples trash', icon_url: '010-shield-1.svg')
badge3 = Badge.create(name: 'Zero Waste Queen', description: 'refuses buying packaged food', icon_url: '004-medal.svg')

pbadge1 = ProfileBadge.create(user: user6, badge: badge1, stars: 2)
pbadge2 = ProfileBadge.create(user: user6, badge: badge2, stars: 1)
pbadge3 = ProfileBadge.create(user: user6, badge: badge3, stars: 3)









