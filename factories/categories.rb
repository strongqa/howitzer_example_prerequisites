FactoryBot.define do
  factory :category do
    name { "Category name #{Gen.serial}" }

    trait :default do
      name { 'Category name Test' }
      initialize_with { Category.default('Category name Test') || Category.new }
    end
  end
end
