class ProjectStatus < ApplicationRecord
    has_many :projects

    validates :name,  presence: true
end
