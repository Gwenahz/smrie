json.array!(@reparations) do |reparation|
  json.extract! reparation, :id, :id_user, :id_smartphone, :id_panne, :price
  json.url reparation_url(reparation, format: :json)
end
