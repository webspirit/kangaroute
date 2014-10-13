FactoryGirl.define do
  password = Faker::Internet.password

  factory :user, aliases: [:driver, :passenger] do
    email                   Faker::Internet.email
    password                password
    password_confirmation   password
    mobile                  Faker::PhoneNumber.cell_phone
    name                    Faker::Name.first_name
    about                   Faker::Lorem.paragraph
  end
end
