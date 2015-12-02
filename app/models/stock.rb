class Stock < ActiveRecord::Base

	has_many :smartphones
	has_many :pannes
	
end
