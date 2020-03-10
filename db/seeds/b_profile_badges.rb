pro_user = User.last

Badge.all.each do |badge|
  ProfileBadge.create(user: pro_user, badge: badge, stars: rand(1..3))
end
