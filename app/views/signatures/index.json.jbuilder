json.array!(@signatures) do |signature|
  json.extract! signature, :name, :signature
  json.url signature_url(signature, format: :json)
end