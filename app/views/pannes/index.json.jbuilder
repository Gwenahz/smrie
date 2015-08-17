json.array!(@pannes) do |panne|
  json.extract! panne, :id, :name
  json.url panne_url(panne, format: :json)
end
