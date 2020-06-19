class CreateMeets < ActiveRecord::Migration[6.0]
  def change
    create_table :meets do |t|
      t.string :nombre
      t.string :tipo
      t.datetime :fecha
      t.string :lugar

      t.timestamps
    end
  end
end
