class Trip < ActiveRecord::Base
	belongs_to :commission

	has_one :expence
	has_one :detail
end
