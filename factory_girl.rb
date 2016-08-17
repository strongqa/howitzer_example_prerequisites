# For more information about configuration please refer to
# http://www.rubydoc.info/gems/factory_girl/file/GETTING_STARTED.md

FactoryGirl.definition_file_paths = [File.join(__dir__, 'factories')]
FactoryGirl.find_definitions

# This module holds custom factory methods
module FactoryGirl
  def self.given_by_number(factory, num)
    data = Howitzer::Cache.extract(factory, num.to_i)
    unless data
      data = build(factory)
      Howitzer::Cache.store(factory, num.to_i, data)
    end
    data
  end
end
module Gen
  def self.serial
    a = [('a'..'z').to_a, (0..9).to_a].flatten.shuffle
    "#{Time.now.utc.strftime('%j%H%M%S')}#{a[0..4].join}"
  end
end
