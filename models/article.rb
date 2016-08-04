require_relative 'base_model'
class Article < BaseModel
  has_many :comments
end
