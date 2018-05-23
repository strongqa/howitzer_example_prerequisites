require_relative 'base'
class Article < Base
  has_many :comments
  belongs_to :category
end
