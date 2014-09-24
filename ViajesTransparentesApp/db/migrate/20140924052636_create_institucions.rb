class CreateInstitucions < ActiveRecord::Migration
  def change
    create_table :institucions do |t|
      t.string :institucion
    end
  end
end
