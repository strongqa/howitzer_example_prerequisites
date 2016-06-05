require_relative 'base'
class Article < Base
  has_many :comments
end
