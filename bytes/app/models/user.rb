class User < ApplicationRecord
    has_many :bytes
    has_many :comments, :dependent => :destroy
    has_secure_password
    has_secure_token :api_token
end
