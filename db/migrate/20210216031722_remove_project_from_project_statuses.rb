class RemoveProjectFromProjectStatuses < ActiveRecord::Migration[6.1]
  def change
    remove_column :project_statuses, :project_id, :integer
  end
end
