class Commission < ActiveRecord::Base
	belongs_to :public_officer

	has_many :trips
end
