json.array!(@withdrawals) do |withdrawal|
  json.extract! withdrawal, :id, :amount, :tracking_id, :collector, :date
  json.url withdrawal_url(withdrawal, format: :json)
end
