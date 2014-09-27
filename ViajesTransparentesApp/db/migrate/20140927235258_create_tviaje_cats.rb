class CreateTviajeCats < ActiveRecord::Migration
  def change
    create_table :tviaje_cats do |t|
      t.string :tema
    end
  end
end
