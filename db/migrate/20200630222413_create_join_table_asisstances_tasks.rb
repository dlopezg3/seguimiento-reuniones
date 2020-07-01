class CreateJoinTableAsisstancesTasks < ActiveRecord::Migration[6.0]
  def change
    create_join_table :assistances, :tasks do |t|
      # t.references :assistanc, index: true, foreign_key: true
      # t.references :task, index: true, foreign_key: true
      # t.index [:assistance_id, :task_id]
      # t.index [:task_id, :assistance_id]
    end
  end
end
