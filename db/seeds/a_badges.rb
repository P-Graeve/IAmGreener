registration_badge = Badge.new(name: 'Saving the Earth', description: 'You registered to I am greener', icon_url: '012-reward-1.svg', trigger: 'sign_up', countable: 'count', threshold: 1)

king_of_the_forest = Badge.new(name: 'King of the Forest', description: 'You\'ve done so much good for this world, you\'ve become the king of the trees! You\'ve earned more than 10000 trees!', icon_url: 'deer.svg', trigger: 'earn_tree', countable: 'count', threshold: 10_000)
tree_lord1 = Badge.new(name: 'Lord of the Trees', description: 'You earned more than 500 trees.', icon_url: '004-joshua-tree.svg', trigger: 'earn_tree', countable: 'count' , threshold: 500, stars: 1)
tree_lord2 = Badge.new(name: 'Lord of the Trees', description: 'You earned more than 3000 trees!', icon_url: '004-joshua-tree.svg', trigger: 'earn_tree', countable: 'count', threshold: 3000, stars: 2)
tree_lord3 = Badge.new(name: 'Lord of the Trees', description: 'You earned more than 5000 trees!', icon_url: '004-joshua-tree.svg', trigger: 'earn_tree', countable: 'count' , threshold: 5000, stars: 3)
zero_waste1 = Badge.new(name: 'Zero Waste Queen', description: 'You completed 2 challenges in waste', icon_url: '001-waste.svg', trigger: 'complete_challenge', countable: 'count', threshold: 2, stars: 1)
zero_waste2 = Badge.new(name: 'Zero Waste Queen', description: 'You completed 5 challenges in waste', icon_url: '001-waste.svg', trigger: 'complete_challenge', countable: 'count', threshold: 5, stars: 2)
zero_waste3 = Badge.new(name: 'Zero Waste Queen', description: 'You completed 10 challenges in waste', icon_url: '001-waste.svg', trigger: 'complete_challenge', countable: 'count', threshold: 10, stars: 3)
aquarius1 = Badge.new(name: 'Aquarius', description: 'You completed 2 challenges in water', icon_url: '004-medal.svg', trigger: 'complete_challenge', countable: 'count' , threshold: 2, stars: 1)
aquarius2 = Badge.new(name: 'Aquarius', description: 'You completed 5 challenges in water', icon_url: '004-medal.svg', trigger: 'complete_challenge', countable: 'count' , threshold: 5, stars: 2)
aquarius3 = Badge.new(name: 'Aquarius', description: 'You completed 10 challenges in water', icon_url: '004-medal.svg', trigger: 'complete_challenge', countable: 'count' , threshold: 10, stars: 3)
local_farmer1 = Badge.new(name: 'Local Farmer', description: 'You bought a lot of local and seasonal products. You are amazing. You completed 2 challenges in food', icon_url: '007-cow.svg', trigger: 'complete_challenge', countable: 'count', threshold: 2, stars: 1)
local_farmer2 = Badge.new(name: 'Local Farmer', description: 'You bought a lot of local and seasonal products. You are amazing. You completed 5 challenges in food', icon_url: '007-cow.svg', trigger: 'complete_challenge', countable: 'count', threshold: 5, stars: 2)
local_farmer3 = Badge.new(name: 'Local Farmer', description: 'You bought a lot of local and seasonal products. You are amazing. You completed 10 challenges in food', icon_url: '007-cow.svg', trigger: 'complete_challenge', countable: 'count', threshold: 10, stars: 3)
innovative_traveller1 = Badge.new(name: 'Innovative Traveller', description: 'You tried to find the perfect way to travel ecological. You completed 2 challenges in transportation', icon_url: '008-ufo.svg', trigger: 'complete_challenge', countable: 'count', threshold: 2, stars: 1)
innovative_traveller2 = Badge.new(name: 'Innovative Traveller', description: 'You tried to find the perfect way to travel ecological. You completed 5 challenges in transportation', icon_url: '008-ufo.svg', trigger: 'complete_challenge', countable: 'count', threshold: 5, stars: 2)
innovative_traveller3 = Badge.new(name: 'Innovative Traveller', description: 'You tried to find the perfect way to travel ecological. You completed 10 challenges in transportation', icon_url: '008-ufo.svg', trigger: 'complete_challenge', countable: 'count', threshold: 10, stars: 3)
solar_boy1 = Badge.new(name: 'Solarboy', description: 'You saved energy! Keep up the good work. You completed 2 challenges in energy', icon_url: '010-light-bulb.svg', trigger: 'complete_challenge', countable: 'count', threshold: 2, stars: 1)
solar_boy2 = Badge.new(name: 'Solarboy', description: 'You saved energy! Keep up the good work. You completed 5 challenges in energy', icon_url: '010-light-bulb.svg', trigger: 'complete_challenge', countable: 'count', threshold: 3, stars: 2)
solar_boy3 = Badge.new(name: 'Solarboy', description: 'You saved energy! Keep up the good work. You completed 10 challenges in energy', icon_url: '010-light-bulb.svg', trigger: 'complete_challenge', countable: 'count', threshold: 5, stars: 3)
pig_driver = Badge.new(name: 'Pig Driver', description: 'You are driving a dirty car. I know, not everyone can afford to change to a newer one or going without one, so just keep in mind for the future and try your best with the challenges!', icon_url: '017-ecology-and-environment.svg', trigger: 'add_car', countable: 'count')
friendly_car = Badge.new(name: 'Friendly Neighbourhood Car', description: 'Your car is easygoing and nice. Everybody loves it.', icon_url: '016-car.svg', trigger: 'add_car', threshold: 1, countable: 'count')
streaker1 = Badge.new(name: 'Streaker', description: 'You kept your daily streak up for a while now! Keep going, make this change happen!', icon_url: '013-advertising.svg', trigger: 'complete_daily_challenge', threshold: 7, countable: 'count', stars: 1)
streaker2 = Badge.new(name: 'Streaker', description: 'You kept your daily streak up for a while now! Keep going, make this change happen!', icon_url: '013-advertising.svg', trigger: 'complete_daily_challenge', threshold: 30, countable: 'count', stars: 2)
streaker3 = Badge.new(name: 'Streaker', description: 'You kept your daily streak up for a while now! Keep going, make this change happen!', icon_url: '013-advertising.svg', trigger: 'complete_daily_challenge', threshold: 100, countable: 'count', stars: 3)

sloth = Badge.new(name: 'Sloth', description: 'We have not seen you in a while. It would be nice to see you more often.', icon_url: '015-sloth.svg', trigger: 'missed_day', threshold: 7)
got_them = Badge.new(name: 'Gotta catch em all', description: 'You got all the badges! Congrats!', icon_url: '001-medal-1.svg', trigger: 'earn_badge', threshold: 100)
apollo = Badge.new(name: 'Apollo', description: 'You finished all the energy challenges. Amazing!', icon_url: '011-apollo.svg')
poseidon = Badge.new(name: 'Poseidon', description: 'You finished all the water challenges!', icon_url: '006-poseidon.svg')
olympus = Badge.new(name: 'Olympus', description: 'You are so dedicated! You finished all our challenges!', icon_url: '012-olympus.svg')
# save them with the right type
king_of_the_forest.legendary!
registration_badge.good!
zero_waste1.good!
zero_waste2.good!
zero_waste3.good!
tree_lord1.good!
tree_lord2.good!
tree_lord3.good!
aquarius1.good!
aquarius2.good!
aquarius3.good!
local_farmer1.good!
local_farmer2.good!
local_farmer3.good!
innovative_traveller1.good!
innovative_traveller2.good!
innovative_traveller3.good!
solar_boy1.good!
solar_boy2.good!
solar_boy3.good!
pig_driver.bad!
friendly_car.good!
streaker1.good!
streaker2.good!
streaker3.good!
apollo.good!
olympus.legendary!
sloth.bad!
got_them.legendary!
poseidon.legendary!
