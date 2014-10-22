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

class Page < ActiveRecord::Base
	validates_presence_of :name, :title, :meta_description, :content
end
