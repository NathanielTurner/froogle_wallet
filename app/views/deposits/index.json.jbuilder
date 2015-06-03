json.array!(@deposits) do |deposit|
  json.extract! deposit, :id, :amount, :tracking_id, :investor, :date
  json.url deposit_url(deposit, format: :json)
end
