class CreateSearchTrips < ActiveRecord::Migration
  def change
    create_table :search_trips do |t|
      t.date :inicio_fecha_rango
      t.date :fin_fecha_rango
      t.decimal :rango_min_gasto, precision: 10, scale: 2, :default => 0.00
      t.decimal :rango_max_gasto, precision: 10, scale: 2, :default => 0.00
    end
  end
end
