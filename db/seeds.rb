# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100000.times do |n|
    a = Account.new
    a.name =  Faker::Name.name
    a.email =  Faker::Internet.email
    a.city = Faker::Address.city_suffix
    a.zipcode  = Faker::Address.zip_code
    a.state = Faker::Address.state
    a.about =  Faker::Company.bs
    a.type = 'Customer'
    a.employees = (rand * 90).to_i

    a.save
end
