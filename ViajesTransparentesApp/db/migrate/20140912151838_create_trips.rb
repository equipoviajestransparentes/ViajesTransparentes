class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :public_officer_id
      t.integer :localidad_origen
      t.integer :localidad_destino
      t.integer :tipo_viaje
      t.date :fechainicio_com
      t.date :fechafin_com
      t.integer :tema
      t.text :motivo
      t.text :resultado

      t.timestamps
    end
  end
end
