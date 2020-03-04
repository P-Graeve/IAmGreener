class SelfRating < ApplicationRecord

  validates :conscious_score, :overall_score, :pickup_trash_score, presence: true
end
