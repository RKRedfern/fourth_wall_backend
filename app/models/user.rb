class User < ApplicationRecord
    has_many :ghosts, dependent: :destroy
    has_many :houses, dependent: :destroy

    has_secure_password
    
    validates :name, uniqueness: { case_sensitive: false }
end
