FactoryGirl.define do
  factory :ride do
    driver #named association
    departure_address   "#{Faker::Address.street_address}, #{Faker::Address.city} #{Faker::Address.country}"
    arrival_address     "#{Faker::Address.street_address}, #{Faker::Address.city} #{Faker::Address.country}"
    departure_lat       Faker::Address.latitude
    departure_lng       Faker::Address.longitude
    arrival_lat         Faker::Address.latitude
    arrival_lng         Faker::Address.longitude
    departure_datetime  Time.now
    available_seats     (1..4).to_a.sample
    comments            Faker::Lorem.paragraph
  end
end