class AddNotesToMeets < ActiveRecord::Migration[6.0]
  def change
    add_column :meets, :notes, :string
  end
end
