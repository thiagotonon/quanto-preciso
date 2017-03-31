FactoryGirl.define do
  factory :notice do
    description "Lorem ipsum dolor sit amet"
    sequence(:title) { |n| "Notice #{n}" }
    posted_at Date.today
  end
end