class Byte < ApplicationRecord
    has_many :comments
    belongs_to :user
    # user_id
end
