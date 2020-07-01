class AddFieldsToMeets < ActiveRecord::Migration[6.0]
  def change
    add_column :meets, :agenda, :string
    add_column :meets, :protocol, :string
  end
end
