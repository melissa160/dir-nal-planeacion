class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :nombre
      t.float :apropiacion_inicial
      t.float :apropiacion_vigente
      t.float :compromisos
      t.float :obligaciones
      t.float :pagos
      t.integer :maker_id
      t.integer :year_id

      t.timestamps
    end
  end
end
