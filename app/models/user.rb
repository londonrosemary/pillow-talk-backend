class User < ApplicationRecord
    has_many :dreams

    has_secure_password
end
