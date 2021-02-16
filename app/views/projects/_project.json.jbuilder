json.extract! project, :id, :name, :user_id, :company_id, :project_status_id, :created_at, :updated_at
json.url project_url(project, format: :json)
