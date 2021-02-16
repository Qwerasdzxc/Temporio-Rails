class AddProjectStatusToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :project_status_id, :integer
  end
end
