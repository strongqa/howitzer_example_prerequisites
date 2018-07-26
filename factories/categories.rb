FactoryBot.define do
  factory :category do
    name { "Category name #{Gen.serial}" }
  end
end
