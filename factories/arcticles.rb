FactoryBot.define do
  factory :article do
    title { "Article title #{Gen.serial}" }
    text { 'Test text' }
    category

    before(:create) do |f|
      f.category_id = f.category.try(:id)
    end
  end
end
