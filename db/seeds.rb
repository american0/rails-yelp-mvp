# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "555-1234",
    category:     "Français"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: "555-5555",
    category:     "Bistro"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "555-3322",
    category:     "Tapas"
  },
  {
    name:         "Mama Roma",
    address:      "Rue Oberkampf 75011 Paris",
    phone_number: "555-3333",
    category:     "Italian"
  }
]
restaurants_attributes.each { |params| Restaurant.create!(params) }

Review.destroy_all
reviews_attributes = [
  {
    restaurant_id: 1,
    content:     "bad restaurant",
    rating:      0
  },
  {
    restaurant_id: 1,
    content:     "not a good time",
    rating:      0
  },
  {
    restaurant_id: 1,
    content:     "never coming back, one star experience",
    rating:      1
  },
  {
    restaurant_id: 2,
    content:     "best restaurant in town",
    rating:      5
  }
]
reviews_attributes.each { |params| Review.create!(params) }
