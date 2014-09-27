class CreateViaticoCatalogos < ActiveRecord::Migration
  def change
    create_table :viatico_catalogos do |t|
      t.string :id_puesto
      t.integer :id_tpviaje
      t.string :zona
      t.decimal :tarifa_diaria
      t.integer :id_moneda
    end
  end
end
