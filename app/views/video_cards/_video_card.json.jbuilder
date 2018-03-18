json.extract! video_card, :id, :name, :description, :image, :company_id, :price, :interface_id, :speed, :volume, :type, :tdp, :game_benchmark, :created_at, :updated_at
json.url video_card_url(video_card, format: :json)
