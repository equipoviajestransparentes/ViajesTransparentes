class ModificaTablaDeViajesBaja < ActiveRecord::Migration
  def up
  	remove_column :trips, :public_officer_id
    remove_column :trips, :fechainicio_com
    remove_column :trips, :fechafin_com
    remove_column :trips, :tema
    remove_column :trips, :motivo
    remove_column :trips, :resultado
  end

  def down
  end
end
