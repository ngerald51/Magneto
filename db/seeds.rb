# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create first admin user
email = "demo@demo.com"
password = "password"
first_name = "Demo"
last_name = Faker::Name.last_name

User.create(email: email, password: password, password_confirmation: password, first_name: first_name, last_name: last_name)

# Creating Users
10.times do
  email = Faker::Internet.email
  password = "password"
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name

  User.create(email: email, password: password, password_confirmation: password,
              first_name: first_name, last_name: last_name)
end

#Create Company
email='gg@gmail.com'
hr_name='Mark Ho'
company='Nasa'
details='NASA Vision: We reach for new heights and reveal the unknown for the benefit of humankind.'
password='password'

Company.create(email: email, hr_name: hr_name, coyname: company,
 details: details, password: password, password_confirmation: password)
