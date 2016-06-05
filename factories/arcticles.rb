FactoryGirl.define do
  factory :article do
    title { "Article title #{Howitzer::Utils::Gen.serial}"}
    text { 'Test text' }
  end
end
