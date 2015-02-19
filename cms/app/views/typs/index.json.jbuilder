json.array!(@typs) do |typ|
  json.extract! typ, :id, :discription
  json.url typ_url(typ, format: :json)
end
