class CreateTemaDeViajeCatalogos < ActiveRecord::Migration
  def change
    create_table :tema_viaje_cats do |t|
      t.string :tema
    end
  end
end
