class CambiarDefaulMontosPublicOfficer < ActiveRecord::Migration
  def change
	change_column :public_officers, :gastos_comprobados_total, :decimal, precision: 10, scale: 2, :default => 0.00
	change_column :public_officers, :gastos_sin_comprobar_total, :decimal, precision: 10, scale: 2, :default => 0.00
	change_column :public_officers, :costo_total, :decimal, precision: 10, scale: 2, :default => 0.00
	change_column :public_officers, :viaticos_devueltos_total, :decimal, precision: 10, scale: 2, :default => 0.00
  end
end
