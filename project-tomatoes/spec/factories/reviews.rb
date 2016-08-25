FactoryGirl.define do
  factory :review do
    votes 1
    description "MyText"
    user nil
    movie nil
  end
end
