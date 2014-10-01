class AgregarPaisEstadoCiudadATrpis < ActiveRecord::Migration
  def change
  	add_column :trips, :pais, :string
  	add_column :trips, :estado, :string
  	add_column :trips, :ciudad, :string
  	add_column :trips, :pais_d, :string
  	add_column :trips, :estado_d, :string
  	add_column :trips, :ciudad_d, :string
  end
end
