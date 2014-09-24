class CreatePuestos < ActiveRecord::Migration
  def change
    create_table :puestos, id: false do |t|
      t.string :id, null: false
      t.string :puesto
    end
    add_index :puestos, :id, unique: true
  end
end
