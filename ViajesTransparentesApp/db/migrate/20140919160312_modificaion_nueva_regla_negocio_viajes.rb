class ModificaionNuevaReglaNegocioViajes < ActiveRecord::Migration
  def up
  	add_column :trips, :commission_id, :integer
  	remove_column :trips, :officer_commission_id
  end

  def down
  end
end
