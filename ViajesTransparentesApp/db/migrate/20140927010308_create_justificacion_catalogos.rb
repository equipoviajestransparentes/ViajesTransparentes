class CreateJustificacionCatalogos < ActiveRecord::Migration
  def change
    create_table :justificacion_catalogos do |t|
      t.string :justificacion
    end
  end
end
