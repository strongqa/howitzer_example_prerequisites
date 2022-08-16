FactoryBot.define do
  factory :user do
    email { "howitzer-#{Gen.serial}@#{Howitzer.onesecmail_domain}" }
    name { "FirstName LastName #{Gen.serial}" }
    password { Howitzer.app_test_pass }
    password_confirmation { Howitzer.app_test_pass }

    trait :default do
      initialize_with { User.default || User.new }
    end

    trait :admin do
      is_admin { true }
    end
  end
end
