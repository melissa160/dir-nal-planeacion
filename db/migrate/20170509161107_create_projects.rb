class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :nombre
      t.integer :apropiacion_inicial
      t.integer :apropiacion_vigente
      t.integer :compromisos
      t.integer :obligaciones
      t.integer :pagos
      t.integer :maker_id

      t.timestamps
    end
  end
end
