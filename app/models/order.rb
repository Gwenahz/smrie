class Order < ActiveRecord::Base

	has_many :helps, dependent: :destroy

end
