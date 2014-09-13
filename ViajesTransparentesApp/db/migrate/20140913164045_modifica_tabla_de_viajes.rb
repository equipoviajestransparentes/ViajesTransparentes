class ModificaTablaDeViajes < ActiveRecord::Migration
  def up
  	add_column :trips, :officer_commission_id, :integer
  end

  def down
  end
end
