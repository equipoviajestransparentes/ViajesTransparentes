class CreateTipoPersonals < ActiveRecord::Migration
  def change
    create_table :tipo_personals do |t|
      t.string :tipo_personal
    end
  end
end
