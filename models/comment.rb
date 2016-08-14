require_relative 'base'
class Comment < Base
  uri 'articles/:article_id/comments'

  belongs_to :article
  belongs_to :user
end
