FactoryGirl.define do
  factory :snippet do
    sequence(:title) { |i| "Snippet #{i}" }
    english "Here is example text in English."
  end
end
