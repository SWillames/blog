class Comment < ApplicationRecord
    has_many :comments, dependent: :destroy
end
