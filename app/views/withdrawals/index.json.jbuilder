json.array!(@withdrawals) do |withdrawal|
  json.extract! withdrawal, :id, :amount, :date, :collector
  json.url withdrawal_url(withdrawal, format: :json)
end
