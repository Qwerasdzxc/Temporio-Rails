json.extract! task_log, :id, :task_id, :user_id, :title, :content, :created_at, :updated_at
json.url task_log_url(task_log, format: :json)
