class Component < ApplicationRecord
    has_many :workers
    has_many :users, through: :workers
    has_many :tasks
    belongs_to :project
end
