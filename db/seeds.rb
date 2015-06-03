how_many = 10

how_many.times do |i|
  Withdrawal.create!(collector: Faker::Company.bs,
      district_at: Faker::Address.city,
      hometown_at: Faker::Address.city,
      party: parties.sample)
end

cwithdrawal = Candidate.all
how_many.times do
  v = Voter.create!(name: Faker::Name.name,
      party: parties.sample)
  Vote.create(voter_id: v.id,
      candidate_id: candidates.sample.id)
end

puts "This took #{Time.now-start_time} seconds"
