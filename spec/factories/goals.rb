FactoryGirl.define do
  factory :goal do
    # user
    name {"Weight Loss"}
    description {"I will lose 7lbs."}
    due_date {Date.new(2016, 04, 23)}
    motivation {"I want to feel healthier."}
    potential_barrier {"I love cookies!"}
    coping_strategy {"I will eat no more than 2 cookies a day."}

    trait :with_activity do
      after(:create) do |goal|
        goal.activities << create(:activity)
      end
    end
  end

end
