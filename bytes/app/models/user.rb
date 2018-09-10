class User < ApplicationRecord
    has_many :bytes
    has_many :comments, :dependent => :destroy
    has_secure_password
    has_secure_token :api_token
    has_many :active_relationships, class_name: "Relationship", foreign_key: "follower_id", :dependent => :destroy
    has_many :following, through: :active_relationships, source: :followed
    has_many :followers, through: :passive_relationships, source: :follower
    # acts_as_follower

    # follows a user
    def follow(other_user)
        active_relationships.create(followed_id: other_user.id)
    end

    # unfollows a user
    def unfollow(other_user)
        active_relationships.find_by(followed_id: other_user.id).destroy
    end

    # returns true if the current user is following the other user
    def following?(other_user)
        following.include?(other_user)
    end

end
