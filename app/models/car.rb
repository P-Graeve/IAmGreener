require 'open-uri'

class Car < ApplicationRecord
  belongs_to :user

  BRANDS = [
    "Acura",
    "Alfa Romeo",
    "Aston Martin",
    "Audi",
    "Bentley",
    "BMW",
    "Bugatti",
    "Buick",
    "Cadillac",
    "Chevrolet",
    "Chrysler",
    "Citroen",
    "Dodge",
    "Ferrari",
    "Fiat",
    "Ford",
    "Geely",
    "General Motors",
    "GMC",
    "Honda",
    "Hyundai",
    "Infiniti",
    "Jaguar",
    "Jeep",
    "Kia",
    "Koenigsegg",
    "Lamborghini",
    "Land Rover",
    "Lexus",
    "Maserati",
    "Mazda",
    "McLaren",
    "Mercedes-Benz",
    "Mini",
    "Mitsubishi",
    "Nissan",
    "Pagani",
    "Peugeot",
    "Porsche",
    "Ram",
    "Renault",
    "Rolls Royce",
    "Saab",
    "Subaru",
    "Suzuki",
    "Tata Motors",
    "Tesla",
    "Toyota",
    "Volkswagen",
    "Volvo"
]

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
