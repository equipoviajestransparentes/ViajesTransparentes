class Trip < ActiveRecord::Base
	belongs_to :puclic_officer

	has_one :expence
	has_one :detail
end
