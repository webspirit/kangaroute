# == Schema Information
#
# Table name: pages
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  title            :string(255)
#  meta_description :string(255)
#  content          :text
#  created_at       :datetime
#  updated_at       :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :page do
    name 							Faker::Lorem.sentence
    title 						Faker::Lorem.sentence
    meta_description 	Faker::Lorem.sentence
    content 					Faker::Lorem.paragraph
  end
end
