class AgregarColumnaNumComisionACommsions < ActiveRecord::Migration
  def change
  	add_column :commissions, :num_comision, :string
  end
end
