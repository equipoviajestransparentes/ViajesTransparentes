class CreateCommissions < ActiveRecord::Migration
  def change
    create_table :commissions do |t|
      t.integer :id_mec_origen
      t.integer :id_tipo_comision
      t.integer :id_representacion
      t.date :fechainicio_com
      t.date :fechafin_com
      t.string :inst_genera
      t.string :ur
      t.integer :consecutivo
      t.string :acuerdo
      t.string :oficio
      t.text :motivo
      t.decimal :comprobado_total
      t.decimal :sin_comprobar_total
      t.decimal :viatico_devuelto_total
      t.string :estatus_comision

      t.timestamps
    end
  end
end
