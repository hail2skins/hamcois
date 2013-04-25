json.array!(@slogans) do |slogan|
  json.extract! slogan, :name
  json.url slogan_url(slogan, format: :json)
end