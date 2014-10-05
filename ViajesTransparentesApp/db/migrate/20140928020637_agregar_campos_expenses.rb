class AgregarCamposExpenses < ActiveRecord::Migration
  def change
	add_column :expenses, :gasto_alimento, :decimal
	add_column :expenses, :gasto_otro, :decimal
	add_column :expenses, :viaticos_total, :decimal
	add_column :expenses, :viaticos_faltante, :decimal
  end
end
