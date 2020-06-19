class CreateAssistances < ActiveRecord::Migration[6.0]
  def change
    create_table :assistances do |t|
      t.references :meet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
