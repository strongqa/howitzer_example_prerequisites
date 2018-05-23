require_relative 'base'
class Category < Base
  has_many :articles
end
