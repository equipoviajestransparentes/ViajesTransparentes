class CambiarOrdenColumnasServidorPublico < ActiveRecord::Migration
  def up
  	remove_column :public_officers, :nombre
    remove_column :public_officers, :ap_paterno
    remove_column :public_officers, :ap_materno
    remove_column :public_officers, :gastos_comprobados_total
    remove_column :public_officers, :gastos_sin_comprobar_total
    remove_column :public_officers, :costo_total
    remove_column :public_officers, :viaticos_devueltos_total
    remove_column :public_officers, :created_at
    remove_column :public_officers, :updated_at
    remove_column :public_officers, :id_puesto
    remove_column :public_officers, :id_cargo
    remove_column :public_officers, :id_cargo_superior
    remove_column :public_officers, :id_unidad_adm
    remove_column :public_officers, :id_institucion
    remove_column :public_officers, :id_tipo_personal
    remove_column :public_officers, :correo_electronico

    add_column :public_officers, :id_cargo, :integer
    add_column :public_officers, :id_cargo_superior, :integer
    add_column :public_officers, :id_puesto, :integer
	add_column :public_officers, :id_unidad_adm, :integer
    add_column :public_officers, :id_institucion, :integer
    add_column :public_officers, :id_tipo_personal, :integer
    add_column :public_officers, :nombre, :string
    add_column :public_officers, :ap_paterno, :string
    add_column :public_officers, :ap_materno, :string
    add_column :public_officers, :correo_electronico, :integer    
    add_column :public_officers, :gastos_comprobados_total, :decimal
    add_column :public_officers, :gastos_sin_comprobar_total, :decimal
    add_column :public_officers, :costo_total, :decimal
    add_column :public_officers, :viaticos_devueltos_total, :decimal
    add_column :public_officers, :created_at, :datetime
    add_column :public_officers, :updated_at, :datetime
  end

  def down
  end
end
