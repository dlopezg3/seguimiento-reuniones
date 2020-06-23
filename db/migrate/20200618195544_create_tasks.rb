class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :nombre
      t.string :descripcion
      t.datetime :fecha
      t.references :assistance, null: false, foreign_key: true

      t.timestamps
    end
  end
end
