class CreateTemaDeViajeCatalogos < ActiveRecord::Migration
  def change
    create_table :tema_de_viaje_catalogos do |t|
      t.string :tema

      t.timestamps
    end
  end
end
