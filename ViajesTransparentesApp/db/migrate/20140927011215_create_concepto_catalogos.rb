class CreateConceptoCatalogos < ActiveRecord::Migration
  def change
    create_table :concepto_catalogos do |t|
      t.string :concepto
    end
  end
end
