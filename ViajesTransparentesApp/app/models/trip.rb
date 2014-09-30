class Trip < ActiveRecord::Base
	belongs_to :commission

	has_one :detail
	has_many :gastos
	has_one :expense
end
