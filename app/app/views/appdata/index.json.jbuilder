json.array!(@appdata) do |appdatum|
  json.extract! appdatum, :id
  json.url appdatum_url(appdatum, format: :json)
end
