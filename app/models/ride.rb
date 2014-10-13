class Ride < ActiveRecord::Base
	belongs_to :driver, class_name: 'User'

	validates_presence_of :departure_address, 
												:arrival_address, 
												:departure_lat, 
												:departure_lng, 
												:arrival_lat, 
												:arrival_lng, 
												:departure_datetime, 
												:driver_id, 
												:available_seats
end
