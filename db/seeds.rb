how_many = 10

how_many.times do |i|
  Withdrawal.create!(amount: Faker::Number.between(from = 1.00, to = 500.00),
                     date: Faker::Date.between(2.days.ago, Date.today),
                     collector: Faker::Company.bs
end

how_many.times do
  Deposit.create!(amount: Faker::Number.between(from = 1.00, to = 5000.00),
                  date: Faker::Date.between(2.days.ago, Date.today),
                  investor: Faker::Name.name)
end
