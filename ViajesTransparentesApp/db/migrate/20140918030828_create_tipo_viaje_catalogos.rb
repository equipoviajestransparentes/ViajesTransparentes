class CreateTipoViajeCatalogos < ActiveRecord::Migration
  def change
    create_table :tipo_viaje_catalogos do |t|
      t.string :tipo_viaje

      t.timestamps
    end
  end
end
