class CreateTipoPasajeCatalogos < ActiveRecord::Migration
  def change
    create_table :tipo_pasaje_catalogos do |t|
      t.string :tipo_pasaje

      t.timestamps
    end
  end
end
