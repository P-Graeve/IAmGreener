require 'open-uri'
require 'pry-byebug'

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

  validates :brand, :year, :model, presence: true

  def fetch_models
    json = open("https://www.carqueryapi.com/api/0.3/?cmd=getModels&make=#{brand}&year=#{year}").read
    data = JSON.parse(json)
    data["Models"].map { |record| record["model_name"] }
  end

  def fetch_info
    json = open("https://carqueryapi.com/api/0.3/?cmd=getTrims&make=#{brand}&year=#{year}&model=#{model}").read
    data = JSON.parse(json)
    data
    binding.pry
  end
end
