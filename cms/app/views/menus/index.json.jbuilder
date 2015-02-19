json.array!(@menus) do |menu|
  json.extract! menu, :id, :name, :link, :typ, :order, :location
  json.url menu_url(menu, format: :json)
end
