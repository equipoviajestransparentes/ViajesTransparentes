class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.integer :trip_id
      t.integer :id_moneda
      t.decimal :gasto_pasaje
      t.decimal :gasto_viatico
      t.decimal :costo_hotel
      t.decimal :comprobado
      t.decimal :sin_comprobar
      t.decimal :viatico_devuelto
      t.decimal :tarifa_diaria

      t.timestamps
    end
  end
end
