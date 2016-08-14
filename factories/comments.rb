FactoryGirl.define do
  factory :comment do
    body { "Comment #{serial}" }
    user
    article

    before(:create) do |f|
      f.article_id = f.article.try(:id)
      f.user_id = f.user.try(:id)
    end
  end
end
