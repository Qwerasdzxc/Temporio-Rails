class CreateProjectStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :project_statuses do |t|
      t.text :name
      t.integer :project_id

      t.timestamps
    end
  end
end
