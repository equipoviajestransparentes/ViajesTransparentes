class CreateUnidadAdms < ActiveRecord::Migration
  def change
    create_table :unidad_adms do |t|
      t.string :unidad_adm
    end
  end
end
