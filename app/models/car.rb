require 'open-uri'

class Car < ApplicationRecord
  belongs_to :user

  # brand
  # model

  def fetch_info
    test_brand = 'Hyundai'
    test_model = 'IX35'
    test_year = 2011
    json = open("https://www.carqueryapi.com/api/0.3/?cmd=getTrims&make=#{test_brand}&year=#{test_year}").read;
    data = JSON.parse(json)["Trims"]
    data.select do |model|
      model["model_name"] == test_model.downcase
    end
  end
end
