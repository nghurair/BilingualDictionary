json.array!(@english_signs) do |english_sign|
  json.extract! english_sign, :id, :phrase, :filename
  json.url english_sign_url(english_sign, format: :json)
end
