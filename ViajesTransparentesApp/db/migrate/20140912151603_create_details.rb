class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.integer :trip_id
      t.integer :id_mec_origen
      t.string :inst_genera
      t.string :ur
      t.string :tipo_rep
      t.string :integer
      t.integer :consecutivo
      t.string :acuerdo
      t.string :oficio
      t.integer :tipo_com
      t.string :evento
      t.string :url_evento
      t.date :fechainicio_part
      t.date :fechafin_part
      t.text :antecedente
      t.text :actividad
      t.text :contribucion_ifai
      t.string :url_comunicado
      t.string :cubre_pasaje
      t.integer :tipo_pasaje
      t.string :inst_hospedaje
      t.string :hotel
      t.date :fechainicio_hotel
      t.date :fechafin_hotel
      t.text :observaciones
      t.string :detalle_viaje_col

      t.timestamps
    end
  end
end
