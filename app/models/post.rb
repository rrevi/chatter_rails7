class Post < ApplicationRecord
    validates :body, length: {minimum: 1, maximum: 280}
    after_create_commit -> { broadcast_prepend_to "posts", target: "timeline"}
end
