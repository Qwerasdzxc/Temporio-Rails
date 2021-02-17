class Project < ApplicationRecord
    belongs_to :user
    belongs_to :company
    belongs_to :project_status
    has_many :components

    validates :user, presence: true
    validates :name,  presence: true
    validates :company, presence: true
    validates :project_status, presence: true
end
