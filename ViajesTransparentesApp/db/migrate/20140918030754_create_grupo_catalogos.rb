class CreateGrupoCatalogos < ActiveRecord::Migration
  def change
    create_table :grupo_catalogos do |t|
      t.string :grupo

      t.timestamps
    end
  end
end
