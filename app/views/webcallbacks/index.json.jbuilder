json.array!(@webcallbacks) do |webcallback|
  json.extract! webcallback, :id, :numtel, :modele, :panne, :cp, :email, :sms
  json.url webcallback_url(webcallback, format: :json)
end
