class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :detail_id
      t.integer :vuelo_origen
      t.integer :vuelo_regreso
      t.integer :linea_origen
      t.integer :linea_regreso

      t.timestamps
    end
  end
end
