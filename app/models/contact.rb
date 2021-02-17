class Contact < ApplicationRecord
    belongs_to :company

    validates :surname, presence: true
    validates :name,  presence: true
    validates :company, presence: true
end
