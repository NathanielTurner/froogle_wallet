how_many = 10

how_many.times do |i|
  Withdrawal.create!(collector: Faker::Company.bs,
      amount: Faker::Number.between(from = 1.00, to = 500.00),
      date: Faker::Date.between(2.days.ago, Date.today),
end

how_many.times do
  Deposit.create!(investor: Faker::Name.name,
      amount: Faker::Number.between(from = 1.00, to = 5000.00),
      date: Faker::Date.between(2.days.ago, Date.today)
end
