class Job < ApplicationRecord
    has_one :category
    belongs_to :user
end
