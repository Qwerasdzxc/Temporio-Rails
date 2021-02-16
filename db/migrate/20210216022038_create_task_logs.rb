class CreateTaskLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :task_logs do |t|
      t.integer :task_id
      t.integer :user_id
      t.text :title
      t.text :content

      t.timestamps
    end
  end
end
