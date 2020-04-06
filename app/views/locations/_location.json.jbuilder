json.extract! location, :id, :name, :address_line1, :address_line2, :city, :state, :zip_code, :created_at, :updated_at
json.url location_url(location, format: :json)
