class User < ApplicationRecord
    has_one :avatar
    has_one :category

    has_secure_password

    validates :username, uniqueness: true, presence: true
    validates :email, uniqueness: true, presence: true
    validates :password_digest, presence: true
    
end
