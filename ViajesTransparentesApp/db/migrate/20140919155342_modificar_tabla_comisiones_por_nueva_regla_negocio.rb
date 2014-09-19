class ModificarTablaComisionesPorNuevaReglaNegocio < ActiveRecord::Migration
  def up
  	add_column :commissions, :public_officer_id, :integer
  	add_column :commissions, :resultado, :text
  	add_column :commissions, :observaciones, :text
  end

  def down
  end
end
