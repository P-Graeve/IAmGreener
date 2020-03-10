pro_user = User.last

Badge.all.each do |badge|
  ProfileBadge.create(user: pro_user, badge: badge)
end
