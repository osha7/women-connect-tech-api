class Event < ApplicationRecord
    has_one :category
    belongs_to :user, optional: true
end
