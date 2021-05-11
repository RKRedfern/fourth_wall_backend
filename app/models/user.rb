class User < ApplicationRecord
    has_many :ghosts
    has_many :houses

    has_secure_password
    
    validates :name, uniqueness: { case_sensitive: false }
end
