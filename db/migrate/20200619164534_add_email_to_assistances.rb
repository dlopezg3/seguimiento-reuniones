class AddEmailToAssistances < ActiveRecord::Migration[6.0]
  def change
    add_column :assistances, :email, :string
  end
end
