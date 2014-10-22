# == Schema Information
#
# Table name: rides
#
#  id                 :integer          not null, primary key
#  departure_address  :string(255)
#  arrival_address    :string(255)
#  departure_lat      :decimal(18, 12)
#  departure_lng      :decimal(18, 12)
#  arrival_lat        :decimal(18, 12)
#  arrival_lng        :decimal(18, 12)
#  departure_datetime :datetime
#  driver_id          :integer
#  available_seats    :integer
#  comments           :text
#  created_at         :datetime
#  updated_at         :datetime
#

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
