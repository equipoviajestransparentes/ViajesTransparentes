class Detail < ActiveRecord::Base
	belongs_to :trip

	has_many :flights
end
