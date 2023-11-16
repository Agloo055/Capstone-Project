class User < ApplicationRecord
    has_secure_password

    has_many :col_set

    validates :name, presence: true, uniqueness: true
end