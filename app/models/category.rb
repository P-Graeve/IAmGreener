class Category < ApplicationRecord
  has_many :challenges
  has_many :tips
end
