class QuitarTimestampDeCatalogos < ActiveRecord::Migration
  def up
  	remove_column :cargo_catalogos, :created_at
  	remove_column :cargo_catalogos, :updated_at

  	remove_column :grupo_catalogos, :created_at
  	remove_column :grupo_catalogos, :updated_at

  	remove_column :tipo_viaje_catalogos, :created_at
  	remove_column :tipo_viaje_catalogos, :updated_at

  	remove_column :mecanismo_origen_catalogos, :created_at
  	remove_column :mecanismo_origen_catalogos, :updated_at

  	remove_column :tipo_comisions, :created_at
  	remove_column :tipo_comisions, :updated_at

  	remove_column :localidades_catalogos, :created_at
  	remove_column :localidades_catalogos, :updated_at

  	remove_column :moneda_catalogos, :created_at
  	remove_column :moneda_catalogos, :updated_at

  	remove_column :tema_de_viaje_catalogos, :created_at
  	remove_column :tema_de_viaje_catalogos, :updated_at

  	remove_column :tipo_pasaje_catalogos, :created_at
  	remove_column :tipo_pasaje_catalogos, :updated_at

  end

  def down
  end
end
