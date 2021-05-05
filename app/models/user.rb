class User < ApplicationRecord
    has_many :ghosts
    has_many :houses
end
