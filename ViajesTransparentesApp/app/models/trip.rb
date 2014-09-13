class Trip < ActiveRecord::Base
	belongs_to :officer_commission

	has_one :expence
	has_one :detail
end
