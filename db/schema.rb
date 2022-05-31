# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_05_31_143603) do

  create_table "color_combinations", force: :cascade do |t|
    t.string "category_id"
    t.string "base_color_name"
    t.string "base_color_hex"
    t.integer "base_color_r"
    t.integer "base_color_g"
    t.integer "base_color_b"
    t.string "combination_color_name"
    t.string "hex_combination_color"
    t.integer "combination_color_r"
    t.integer "combination_color_g"
    t.integer "combination_color_b"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string "category"
    t.string "color_name"
    t.string "hex_code"
    t.integer "code_r"
    t.integer "code_g"
    t.integer "code_b"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "looks", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "owner_id"
    t.integer "garment_1"
    t.integer "garment_2"
    t.integer "garment_3"
    t.integer "garment_4"
    t.integer "garment_5"
  end

  create_table "photos", force: :cascade do |t|
    t.string "image"
    t.text "caption"
    t.integer "owner_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "type"
    t.string "hex_code"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.integer "company_id"
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
