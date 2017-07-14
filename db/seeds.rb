# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Creating Users
20.times do
  email = Faker::Internet.email
  password = "password"
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  user_img = Faker::Avatar.image
  headline = Faker::Lorem.paragraph
  User.create(email: email, password: password, password_confirmation: password,
    firstname: first_name, lastname: last_name, img_url: user_img, headline: headline)
end

# Creating Companies
10.times do
  email = Faker::Internet.email
  password = "password"
  hr_name = Faker::Name.first_name
  company = Faker::Company.name
  coy_img= Faker::Company.logo
  details = Faker::Company.buzzword  + ' ' +Faker::Company.bs
  Company.create(email: email, password: password, password_confirmation: password,
    hr_name: hr_name, coyname: company, img_url: coy_img)
end

#Create Jobs
10.times do
  bounty = Faker::Number.between(450, 5000)
  details = Faker::Company.buzzword  + ' ' +Faker::Company.bs
  title =Faker::Job.title
  sector = Faker::Job.field
  offset = rand(Company.count)
  coyid = Company.offset(offset).limit(1).first.id
  Job.create(coy_id: coyid,bounty: bounty, details: details, title: title, sector: sector)      
end


#Create Company
email='gg@gmail.com'
hr_name='Mark Ho'
company = Faker::Company.name
details='NASA Vision: We reach for new heights and reveal the unknown for the benefit of humankind.'
password='password'
contact= '91235887'
coy_img= Faker::Company.logo

Company.create(email: email, hr_name: hr_name, coyname: company,
 details: details, password: password, password_confirmation: password, img_url: coy_img)



#create testimonials
10.times do
  note = Faker::Hacker.say_something_smart
  offset = rand(Company.count)
  from_uid = Company.offset(offset).limit(1).first.id
  offset = rand(Company.count)
  to_uid = Company.offset(offset).limit(1).first.id
  
  Testi.create(from_uid: from_uid,to_uid: to_uid, note: note)      
end