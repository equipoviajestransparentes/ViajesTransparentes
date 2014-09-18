class CreateMecanismoOrigenCatalogos < ActiveRecord::Migration
  def change
    create_table :mecanismo_origen_catalogos do |t|
      t.string :mec_origen

      t.timestamps
    end
  end
end
