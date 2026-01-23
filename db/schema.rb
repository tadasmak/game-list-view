# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2026_01_23_114113) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"
  enable_extension "pg_trgm"

  create_table "games", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title", null: false
    t.integer "platform", null: false
    t.integer "region", null: false
    t.string "image_url"
    t.decimal "base_price", precision: 9, scale: 2
    t.decimal "current_price", precision: 9, scale: 2
    t.integer "discount_percent", default: 0, null: false
    t.boolean "has_cashback", default: false, null: false
    t.decimal "cashback_amount", precision: 9, scale: 2
    t.integer "likes_count", default: 0, null: false
    t.index ["platform"], name: "index_games_on_platform"
    t.index ["region"], name: "index_games_on_region"
    t.index ["title"], name: "index_games_on_title", opclass: :gin_trgm_ops, using: :gin
  end
end
