json.array!(@nightmares) do |nightmare|
  json.extract! nightmare, :id, :name, :expression, :description
  json.url nightmare_url(nightmare, format: :json)
end
