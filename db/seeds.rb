# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.first.properties.create(
  name: "Milwaukee Apartments",
  address: "245 N Madison St",
  address_2: "",
  city: "Chicago",
  state: "IL",
  zipcode: "60606"
)
