json.extract! ssd, :id, :name, :description, :image, :company_id, :price, :volume, :size, :write_speed, :read_speed, :created_at, :updated_at
json.url ssd_url(ssd, format: :json)
