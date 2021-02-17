class TaskLog < ApplicationRecord
    belongs_to :task
    belongs_to :user

    validates :task, presence: true
    validates :user, presence: true
    validates :title, presence: true, length: { minimum: 6 }
end
