class User < ApplicationRecord
    has_one :avatar
    accepts_nested_attributes_for :avatar
    has_one :category

    has_secure_password

    validates :username, uniqueness: true, presence: true
    validates :email, uniqueness: true, presence: true
    validates :password_digest, presence: true
    
end
