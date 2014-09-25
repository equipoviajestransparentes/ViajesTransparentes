class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :nombre
      t.string :primer_ap
      t.date :segundo_ap
      t.string :puesto
      t.decimal :min_gasto
      t.decimal :max_gasto
      t.date :min_fecha
      t.date :max_fecha
    end
  end
end
