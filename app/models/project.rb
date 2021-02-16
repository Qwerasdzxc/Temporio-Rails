class Project < ApplicationRecord
    belongs_to :user
    belongs_to :company
    belongs_to :project_status
    has_many :components
end
