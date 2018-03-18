json.extract! cpu, :id, :name, :description, :image, :company_id, :price, :cpu_socket_id, :core, :core_num, :core_speed, :video_core_id, :tdp, :game_benchmark, :created_at, :updated_at
json.url cpu_url(cpu, format: :json)
