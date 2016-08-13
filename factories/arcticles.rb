FactoryGirl.define do
  factory :article do
    title { "Article title #{serial}" }
    text { 'Test text' }
  end
end
