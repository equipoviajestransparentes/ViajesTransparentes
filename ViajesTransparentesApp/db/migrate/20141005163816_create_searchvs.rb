class CreateSearchvs < ActiveRecord::Migration
  def change
    create_table :searchvs do |t|
      t.date :inicio_fecha_rango
      t.date :fin_fecha_rango
      t.decimal :rango_min_gasto
      t.decimal :rango_max_gasto

      t.timestamps
    end
  end
end
