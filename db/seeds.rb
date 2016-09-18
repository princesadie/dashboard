#CREATE COMPANY
company = Company.new
company.name = "Preferred Property Management"
company.address = Faker::Address.street_address
company.city = Faker::Address.city
company.state = Faker::Address.state_abbr
company.zipcode = Faker::Address.zip
company_logo = File.new("app/assets/images/seed/company_logo.png")
company.logo = company_logo
company_logo.close
company.save!

user_photo_number = -1
4.times do
  user_photo_number += 1
  # CREATE USERS
  user = User.new
  user.email = "p#{user_photo_number}@p.com"
  user.password = "123123"
  user.password_confirmation = "123123"
  user.username = Faker::Internet.user_name
  user.property_owner = true
  user.first_name = Faker::Name.first_name
  user.last_name = Faker::Name.last_name
  user.address = Faker::Address.street_address
  user.address_2 = Faker::Address.secondary_address
  user.city = Faker::Address.city
  user.state = Faker::Address.state_abbr
  user.zipcode = Faker::Address.zip
  user_avatar = File.new("app/assets/images/seed/user_#{user_photo_number}.jpg")
  user.avatar = user_avatar
  user_avatar.close
  user.save!
  Company.first.users << user
end

User.all.each do |user|
  i = rand(4..12)
  i.times do
    property_photo_number = rand(0..12)
    # CREATE PROPERTIES
    property = Property.new
    property.name = Faker::Hipster.word.capitalize + " " + ["Apartments", "Luxury Apartments", "Communities", ""].sample
    property.address = Faker::Address.street_address
    property.city = Faker::Address.city
    property.state = Faker::Address.state_abbr
    property.zipcode = Faker::Address.zip
    property_image = File.new("app/assets/images/seed/p#{property_photo_number}.jpeg")
    property.main_image = property_image
    property_image.close
    property.save!
    user.properties << property
  end
end

Property.all.each do |property|
  # CREATE UNITS
  unit_count = rand(5..20)
  count = 0
  unit_count.times do
    count += 1
    unit_photo_number = rand(0..10)
    unit = Unit.new
    unit.name = "UNIT A#{count}00"
    unit.size_sf = [500,800,1200,1600].sample
    unit.monthly_rate = [550.50, 870.90, 1200.95, 1890].sample
    unit.rooms = [0,1,2,3].sample
    unit.bathrooms = [1,2].sample
    unit_image = File.open("app/assets/images/seed/u#{unit_photo_number}.jpeg")
    unit.main_image = unit_image
    unit_image.close
    unit.save!
    property.units << unit
  end
end
