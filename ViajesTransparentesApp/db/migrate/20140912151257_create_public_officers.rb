class CreatePublicOfficers < ActiveRecord::Migration
  def change
    create_table :public_officers do |t|
      t.string :nombre
      t.string :ap_paterno
      t.string :ap_materno
      t.integer :puesto
      t.decimal :gastos_comprobados_total
      t.decimal :gastos_sin_comprobar_total
      t.decimal :costo_total
      t.decimal :viaticos_devueltos_total

      t.timestamps
    end
  end
end
