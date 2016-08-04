require_relative 'base_model'
class Comment < BaseModel
  belongs_to :article
  belongs_to :user

  collection_path "articles/:article_id/comments"
end
