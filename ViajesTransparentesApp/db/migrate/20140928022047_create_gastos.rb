class CreateGastos < ActiveRecord::Migration
  def change
    create_table :gastos do |t|
      t.integer :trip_id
      t.date :fh_comprobante
      t.integer :id_concepto
      t.decimal :importe
      t.integer :id_moneda
      t.string :existe_comprobante
      t.integer :id_justificacion

      t.timestamps
    end
  end
end
