class CreateConsultaViajes < ActiveRecord::Migration
  def change
    create_table :consulta_viajes do |t|
      t.date :fecha_inicio
      t.date :fecha_fin
      t.integer :public_officer_id
      t.decimal :min_precio
      t.decimal :max_precio

      t.timestamps
    end
  end
end
