class CreateLocalidadesCatalogos < ActiveRecord::Migration
  def change
    create_table :localidades_catalogos do |t|
      t.string :pais
      t.string :latitud_pais
      t.string :longitud_pais
      t.string :estado
      t.string :latitud_estado
      t.string :longitud_estado
      t.string :ciudad
      t.string :latitud_ciudad
      t.string :longitud_ciudad

      t.timestamps
    end
  end
end
