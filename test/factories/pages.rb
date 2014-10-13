# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :page do
    name 							Faker::Lorem.sentence
    title 						Faker::Lorem.sentence
    meta_description 	Faker::Lorem.sentence
    content 					Faker::Lorem.paragraph
  end
end
