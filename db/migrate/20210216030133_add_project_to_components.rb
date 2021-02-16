class AddProjectToComponents < ActiveRecord::Migration[6.1]
  def change
    add_column :components, :project_id, :integer
  end
end
