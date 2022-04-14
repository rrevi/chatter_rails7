class Post < ApplicationRecord
    validates :body, length: {minimum: 1, maximum: 280}
    after_create_commit -> { broadcast_prepend_to "posts", target: "timeline"}
    after_update_commit -> { broadcast_replace_to "posts" }
end
