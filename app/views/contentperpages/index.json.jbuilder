json.array!(@contentperpages) do |contentperpage|
  json.extract! contentperpage, :id, :contentid, :subitemid
  json.url contentperpage_url(contentperpage, format: :json)
end
