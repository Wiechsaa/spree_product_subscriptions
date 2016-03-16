FactoryGirl.define do
  factory :monthly_subscription_frequency, class: Spree::SubscriptionFrequency do
    title "monthly"
    months_count 1
  end

  factory :nil_attributes_subscription, class: Spree::Subscription do
  end

  factory :valid_subscription, class: Spree::Subscription do
    price 20.00
    quantity 2
    delivery_number 6
    association :variant, factory: :base_variant
    association :frequency, factory: :monthly_subscription_frequency
    association :parent_order, factory: :order_with_line_items
    association :ship_address, factory: :address
    association :bill_address, factory: :address
    association :source, factory: :credit_card
  end
end
