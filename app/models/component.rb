class Component < ApplicationRecord
    has_many :workers
    has_many :users, through: :workers
    has_many :tasks
    belongs_to :project

    validates :name, presence: true, length: { minimum: 6 }
    validates :project, presence: true
end
