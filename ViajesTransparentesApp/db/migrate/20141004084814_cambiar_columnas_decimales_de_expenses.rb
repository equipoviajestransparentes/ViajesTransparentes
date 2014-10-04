class CambiarColumnasDecimalesDeExpenses < ActiveRecord::Migration
  def change
  	change_column :expenses, :gasto_pasaje, :decimal, precision: 10, scale: 2, :default => 0.00
   	change_column :expenses, :gasto_viatico, :decimal, precision: 10, scale: 2, :default => 0.00
  	change_column :expenses, :costo_hotel, :decimal, precision: 10, scale: 2, :default => 0.00
  	change_column :expenses, :comprobado, :decimal, precision: 10, scale: 2, :default => 0.00
  	change_column :expenses, :sin_comprobar, :decimal, precision: 10, scale: 2, :default => 0.00
  	change_column :expenses, :viatico_devuelto, :decimal, precision: 10, scale: 2, :default => 0.00
  	change_column :expenses, :tarifa_diaria, :decimal, precision: 10, scale: 2, :default => 0.00
  	change_column :expenses, :gasto_alimento, :decimal, precision: 10, scale: 2, :default => 0.00
  	change_column :expenses, :gasto_otro, :decimal, precision: 10, scale: 2, :default => 0.00
  	change_column :expenses, :viaticos_total, :decimal, precision: 10, scale: 2, :default => 0.00
  	change_column :expenses, :viaticos_faltante, :decimal, precision: 10, scale: 2, :default => 0.00
  end
end
