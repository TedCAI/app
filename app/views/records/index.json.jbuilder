json.array!(@records) do |record|
  json.extract! record, :id, :country, :city, :name, :postcode, :website, :link, :status
  json.url record_url(record, format: :json)
end
