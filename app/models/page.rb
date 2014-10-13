class Page < ActiveRecord::Base
	validates_presence_of :name, :title, :meta_description, :content
end
