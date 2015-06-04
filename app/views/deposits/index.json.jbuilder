json.array!(@deposits) do |deposit|
  json.extract! deposit, :id, :investor, :amount, :date
  json.url deposit_url(deposit, format: :json)
end
