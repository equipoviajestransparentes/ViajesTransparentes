class AdaptarModeloServidoresPublicosPorNuevoDataSet < ActiveRecord::Migration
  def up
  	remove_column :public_officers, :puesto
  	add_column :public_officers, :id_puesto, :integer
  	add_column :public_officers, :id_cargo, :integer
  	add_column :public_officers, :id_cargo_superior, :integer
  	add_column :public_officers, :id_unidad_adm, :integer
  	add_column :public_officers, :id_institucion, :integer
  	add_column :public_officers, :id_tipo_personal, :integer
  	add_column :public_officers, :correo_electronico, :string
  end

  def down
  end
end
