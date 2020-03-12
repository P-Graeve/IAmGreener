User.all.each_with_index do |user, i|
  User.all.each_with_index do |friend, index|
    Friendship.create(user: user, friend: friend, accepted: true)
  end
end

