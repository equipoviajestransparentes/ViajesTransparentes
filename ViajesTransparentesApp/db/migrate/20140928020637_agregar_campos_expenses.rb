class AgregarCamposExpenses < ActiveRecord::Migration
  def change
	add_column :expenses, :gasto_alimento, :string
	add_column :expenses, :gasto_otro, :string
	add_column :expenses, :viaticos_total, :string
	add_column :expenses, :viaticos_faltante, :string
  end
end
