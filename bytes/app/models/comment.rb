class Comment < ApplicationRecord
    belongs_to :byte
    belongs_to :user
    # user_id
    # post_id
end
