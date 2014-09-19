class DropTablaCommissionOfficers < ActiveRecord::Migration
  def up
  	drop_table :commission_officers
  end

  def down
  end
end
