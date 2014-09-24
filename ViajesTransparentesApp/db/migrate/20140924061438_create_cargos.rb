class CreateCargos < ActiveRecord::Migration
  def change
    create_table :cargos do |t|
      t.string :cargo
    end
  end
end
