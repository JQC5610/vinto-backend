class Post < ApplicationRecord
  belongs_to :user
  has_many :post_tags
  has_many :hash_tags, through: :post_tags
end
