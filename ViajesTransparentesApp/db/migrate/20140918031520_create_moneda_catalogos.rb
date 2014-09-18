class CreateMonedaCatalogos < ActiveRecord::Migration
  def change
    create_table :moneda_catalogos do |t|
      t.string :moneda

      t.timestamps
    end
  end
end
