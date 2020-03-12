namespace :streak do
  desc "TODO"
  task daily_check: :environment do
    User.all.each do |user|
      if !user.actions_from_day(Date.today).empty?
        user.update(streak: user.streak + 1)
      else
        user.update(streak: 0)
      end
    end
  end
end
