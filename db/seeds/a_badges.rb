registration_badge = Badge.new(name: 'Saving the Earth', description: 'You registered to I am greener', icon_url: '012-reward-1.svg')
zero_waste = Badge.new(name: 'Zero Waste Queen', description: 'You refused to buy food in plastic', icon_url: '001-waste.svg')
tree_lord = Badge.new(name: 'Lord of the Trees', description: 'You did a lot of challenges and earned those trees!', icon_url: '004-joshua-tree.svg')
aquarius = Badge.new(name: 'Aquarius', description: 'You saved a lot of water.', icon_url: '004-medal.svg')
poseidon = Badge.new(name: 'Poseidon', description: 'You finished all the water challenges!', icon_url: '006-poseidon.svg')
local_farmer = Badge.new(name: 'Local Farmer', description: 'You bought a lot of local and seasonal products. You are amazing.', icon_url: '007-cow.svg')
innovative_traveller = Badge.new(name: 'Innovative Traveller', description: 'You tried to find the perfect way to travel ecological.', icon_url: '008-ufo.svg')
solar_boy = Badge.new(name: 'Solarboy', description: 'You saved energy! Keep up the good work.', icon_url: '010-light-bulb.svg')
apollo = Badge.new(name: 'Apollo', description: 'You finished all the energy challenges. Amazing!', icon_url: '011-apollo.svg')
olympus = Badge.new(name: 'Olympus', description: 'You are so dedicated! You finished all our challenges!', icon_url: '012-olympus.svg')
streaker = Badge.new(name: 'Streaker', description: 'You kept your daily streak up for a while now! Keep going, make this change happen!', icon_url: '013-advertising.svg')
pig_driver = Badge.new(name: 'Pig Driver', description: 'You are driving a dirty car. I know, not everyone can afford to change to a newer one or going without one, so just keep in head for the future and try your best with the challenges!', icon_url: '017-ecology-and-environment.svg')
friendly_car = Badge.new(name: 'Friendly Neighbourhood Car', description: 'Your car is easygoing and nice. Everybody loves it.', icon_url: '016-car.svg')
sloth = Badge.new(name: 'Sloth', description: 'We have not seen you in a while. It would be nice to see you more often.', icon_url: '015-sloth.svg')
got_them = Badge.new(name: 'Gotta catch em all', description: 'You got all the badges! Congrats!', icon_url: '001-medal-1.svg')

# save them with the right type
registration_badge.good!
zero_waste.good!
tree_lord.good!
aquarius.good!
poseidon.good!
local_farmer.good!
innovative_traveller.good!
solar_boy.good!
apollo.good!
olympus.legendary!
streaker.good!
pig_driver.bad!
friendly_car.good!
sloth.bad!
got_them.legendary!

