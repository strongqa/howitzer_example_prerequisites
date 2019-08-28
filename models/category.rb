require_relative 'base'
class Category < Base
  has_many :articles

  def self.default(name_cat)
    where(name: name_cat.to_sym).first
  end
end
