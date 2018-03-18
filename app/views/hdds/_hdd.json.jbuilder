json.extract! hdd, :id, :name, :description, :image, :company_id, :price, :volume, :size, :rotation_speed, :write_speed, :read_speed, :created_at, :updated_at
json.url hdd_url(hdd, format: :json)
