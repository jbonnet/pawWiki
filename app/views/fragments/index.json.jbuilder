json.array!(@fragments) do |fragment|
  json.extract! fragment, :title, :content
  json.url fragment_url(fragment, format: :json)
end
