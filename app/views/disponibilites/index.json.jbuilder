json.array!(@disponibilites) do |disponibilite|
  json.extract! disponibilite, :id, :amlundi, :pmlundi, :slundi, :ammardi, :pmmardi, :smardi, :ammercredi, :pmmercredi, :smercredi, :amjeudi, :pmjeudi, :sjeudi, :amvendredi, :pmvendredi, :svendredi, :amsamedi, :pmsamedi, :ssamedi, :amdimanche, :pmdimanche, :sdimanche
  json.url disponibilite_url(disponibilite, format: :json)
end
