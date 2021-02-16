json.extract! task, :id, :component_id, :task_status_id, :name, :created_at, :updated_at
json.url task_url(task, format: :json)
