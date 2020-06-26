class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :graph_token
      t.string :user_name
      t.string :user_email

      t.timestamps
    end
  end
end
