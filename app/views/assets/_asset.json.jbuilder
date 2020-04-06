json.extract! asset, :id, :asset_tag, :serial_number, :category_id, :model_id, :primary_user, :location_id, :purchase_date, :warranty_expiry, :notes, :is_deleted, :created_at, :updated_at
json.url asset_url(asset, format: :json)
