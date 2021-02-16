class Task < ApplicationRecord
    belongs_to :component
    belongs_to :task_status
    has_many :task_logs
end
