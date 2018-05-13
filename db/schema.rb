# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180511152051) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chipsets", force: :cascade do |t|
    t.string "name"
    t.boolean "overclocking"
    t.bigint "cpu_socket_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cpu_socket_id"], name: "index_chipsets_on_cpu_socket_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cpu_sockets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cpus", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.bigint "company_id"
    t.integer "price"
    t.bigint "cpu_socket_id"
    t.string "core"
    t.integer "core_num"
    t.float "core_speed"
    t.boolean "overclocking"
    t.bigint "video_core_id"
    t.integer "tdp"
    t.float "game_benchmark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_cpus_on_company_id"
    t.index ["cpu_socket_id"], name: "index_cpus_on_cpu_socket_id"
    t.index ["video_core_id"], name: "index_cpus_on_video_core_id"
  end

  create_table "hdds", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.bigint "company_id"
    t.integer "price"
    t.integer "volume"
    t.string "size"
    t.integer "rotation_speed"
    t.float "write_speed"
    t.float "read_speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_hdds_on_company_id"
  end

  create_table "motherboards", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.bigint "company_id"
    t.integer "price"
    t.bigint "chipset_id"
    t.integer "pci_e_x16_num"
    t.string "sli_crossfire"
    t.integer "ram_num"
    t.bigint "ram_type_id"
    t.string "bios"
    t.string "audio"
    t.string "form_factor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chipset_id"], name: "index_motherboards_on_chipset_id"
    t.index ["company_id"], name: "index_motherboards_on_company_id"
    t.index ["ram_type_id"], name: "index_motherboards_on_ram_type_id"
  end

  create_table "power_supplies", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.bigint "company_id"
    t.integer "price"
    t.integer "power"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_power_supplies_on_company_id"
  end

  create_table "ram_types", force: :cascade do |t|
    t.string "name"
    t.integer "speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rams", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.bigint "company_id"
    t.integer "price"
    t.bigint "ram_type_id"
    t.integer "volume"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_rams_on_company_id"
    t.index ["ram_type_id"], name: "index_rams_on_ram_type_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ssds", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.bigint "company_id"
    t.integer "price"
    t.integer "volume"
    t.string "size"
    t.float "write_speed"
    t.float "read_speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_ssds_on_company_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "login"
    t.string "email", null: false
    t.string "crypted_password"
    t.string "fn"
    t.string "ln"
    t.string "sn"
    t.date "birthday"
    t.string "gender"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "salt"
    t.bigint "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["login"], name: "index_users_on_login", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  create_table "video_cards", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.bigint "company_id"
    t.integer "price"
    t.float "speed"
    t.integer "volume"
    t.string "memory"
    t.integer "tdp"
    t.float "game_benchmark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_video_cards_on_company_id"
  end

  create_table "video_cores", force: :cascade do |t|
    t.string "name"
    t.float "speed"
    t.float "game_benchmark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "chipsets", "cpu_sockets"
  add_foreign_key "cpus", "companies"
  add_foreign_key "cpus", "cpu_sockets"
  add_foreign_key "cpus", "video_cores"
  add_foreign_key "hdds", "companies"
  add_foreign_key "motherboards", "chipsets"
  add_foreign_key "motherboards", "companies"
  add_foreign_key "motherboards", "ram_types"
  add_foreign_key "power_supplies", "companies"
  add_foreign_key "rams", "companies"
  add_foreign_key "rams", "ram_types"
  add_foreign_key "ssds", "companies"
  add_foreign_key "users", "roles"
  add_foreign_key "video_cards", "companies"
end
