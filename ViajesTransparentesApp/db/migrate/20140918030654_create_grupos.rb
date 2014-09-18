class CreateGrupos < ActiveRecord::Migration
  def change
    create_table :grupos do |t|
      t.string :grupo

      t.timestamps
    end
  end
end
