class CreateTipoComisions < ActiveRecord::Migration
  def change
    create_table :tipo_comisions do |t|
      t.string :tipo_com

      t.timestamps
    end
  end
end
