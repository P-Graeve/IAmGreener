class Car < ApplicationRecord
  belongs_to :user

  # brand
  # model


  def fetch_info
    model
  end
end
