class CreateCommissionOfficers < ActiveRecord::Migration
  def change
    create_table :commission_officers do |t|
      t.integer :public_officer_id
      t.integer :commission_id
      t.text :resultado
      t.text :observaciones

      t.timestamps
    end
  end
end
