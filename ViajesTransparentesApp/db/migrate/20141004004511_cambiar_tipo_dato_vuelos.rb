class CambiarTipoDatoVuelos < ActiveRecord::Migration
  def change
	remove_column :flights, :vuelo_origen
	remove_column :flights, :vuelo_regreso
	remove_column :flights, :linea_origen
	remove_column :flights, :linea_regreso
	
	add_column :flights, :vuelo_origen, :string
	add_column :flights, :vuelo_regreso, :string
	add_column :flights, :linea_origen, :string
	add_column :flights, :linea_regreso, :string
	
  end
end
