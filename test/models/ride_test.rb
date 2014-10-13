require 'test_helper'

class RideTest < ActiveSupport::TestCase
	should belong_to(:driver).class_name('User')

  test "should not be valid with empty departure address" do
	  ride = FactoryGirl.build(:ride, departure_address: '')

	  assert_not ride.valid?
	  assert ride.errors.include?(:departure_address)
	end

	test "should not be valid with empty arrival address" do
	  ride = FactoryGirl.build(:ride, arrival_address: '')

	  assert_not ride.valid?
	  assert ride.errors.include?(:arrival_address)
	end

	test "should not be valid with empty departure latitude" do
	  ride = FactoryGirl.build(:ride, departure_lat: '')

	  assert_not ride.valid?
	  assert ride.errors.include?(:departure_lat)
	end

	test "should not be valid with empty departure longitude" do
	  ride = FactoryGirl.build(:ride, departure_lng: '')

	  assert_not ride.valid?
	  assert ride.errors.include?(:departure_lng)
	end

	test "should not be valid with empty arrival latitude" do
	  ride = FactoryGirl.build(:ride, arrival_lat: '')

	  assert_not ride.valid?
	  assert ride.errors.include?(:arrival_lat)
	end

	test "should not be valid with empty arrival longitude" do
	  ride = FactoryGirl.build(:ride, arrival_lng: '')

	  assert_not ride.valid?
	  assert ride.errors.include?(:arrival_lng)
	end

	test "should not be valid with empty departure datetime" do
	  ride = FactoryGirl.build(:ride, departure_datetime: '')

	  assert_not ride.valid?
	  assert ride.errors.include?(:departure_datetime)
	end

	test "should not be valid with empty driver" do
	  ride = FactoryGirl.build(:ride, driver_id: '')

	  assert_not ride.valid?
	  assert ride.errors.include?(:driver_id)
	end

	test "should not be valid with empty available seats" do
	  ride = FactoryGirl.build(:ride, available_seats: '')

	  assert_not ride.valid?
	  assert ride.errors.include?(:available_seats)
	end
end
