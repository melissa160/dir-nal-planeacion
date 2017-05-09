class CreateMakers < ActiveRecord::Migration[5.0]
  def change
    create_table :makers do |t|
      t.integer :codigo
      t.string :sector
      t.string :unidad_ejecutora

      t.timestamps
    end
  end
end
