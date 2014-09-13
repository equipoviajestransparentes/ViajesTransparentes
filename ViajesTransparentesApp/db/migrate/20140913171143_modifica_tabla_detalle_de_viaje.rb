class ModificaTablaDetalleDeViaje < ActiveRecord::Migration
  def up
  	remove_column :details, :id_mec_origen
  	remove_column :details, :inst_genera
  	remove_column :details, :ur
  	remove_column :details, :tipo_rep
  	remove_column :details, :integer
  	remove_column :details, :consecutivo
  	remove_column :details, :acuerdo
  	remove_column :details, :oficio
  	remove_column :details, :tipo_com
  	remove_column :details, :observaciones
  	remove_column :details, :detalle_viaje_col
  	add_column :details, :id_tema_viaje, :integer
  	add_column :details, :latitud_origen, :string
  	add_column :details, :longitud_origen, :string
  	add_column :details, :latitud_destino, :string
  	add_column :details, :longitud_destino, :string
  end

  def down
  end
end
