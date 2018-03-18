json.extract! power_supply, :id, :name, :description, :image, :company_id, :price, :power, :created_at, :updated_at
json.url power_supply_url(power_supply, format: :json)
