class User < ApplicationRecord
    has_many :meditations
    has_many :haunted_houses
end
