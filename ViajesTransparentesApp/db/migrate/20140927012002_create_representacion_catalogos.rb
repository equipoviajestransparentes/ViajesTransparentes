class CreateRepresentacionCatalogos < ActiveRecord::Migration
  def change
    create_table :representacion_catalogos do |t|
      t.string :tp_representacion
    end
  end
end
