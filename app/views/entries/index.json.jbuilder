json.array!(@entries) do |entry|
  json.extract! entry, :id, :title, :content, :url
  json.url entry_url(entry, format: :json)
end
