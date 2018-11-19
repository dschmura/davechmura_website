FactoryBot.define do

  factory :post do
    title { 'This is a test post' }
    status  { :draft }
  end

end
