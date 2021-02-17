class Task < ApplicationRecord
    belongs_to :component
    belongs_to :task_status
    has_many :task_logs

    validates :name, presence: true
    validates :component, presence: true
    validates :task_status, presence: true
end
