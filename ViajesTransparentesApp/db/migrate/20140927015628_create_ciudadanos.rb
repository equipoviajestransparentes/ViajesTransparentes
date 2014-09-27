class CreateCiudadanos < ActiveRecord::Migration
  def change
    create_table :ciudadanos, id:false do |t|
      t.string :id_correo, null: false
      t.string :nombre
      t.string :ap_paterno
      t.string :ap_materno

      t.timestamps
    end
	add_index :ciudadanos, :id_correo, unique: true
  end
end
