class CreateCargoCatalogos < ActiveRecord::Migration
  def change
    create_table :cargo_catalogos do |t|
      t.integer :grupo_id
      t.string :cargo

      t.timestamps
    end
  end
end
