FactoryBot.define do
  factory :product do
    name { "Noodles" }
    description { "Italian linguine" }
    price { 1.5 }
    allergens { "gluten" }
  end
end
