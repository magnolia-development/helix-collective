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

ActiveRecord::Schema[7.2].define(version: 2024_10_04_223108) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "maglev_assets", force: :cascade do |t|
    t.string "filename"
    t.string "content_type"
    t.integer "width"
    t.integer "height"
    t.integer "byte_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maglev_page_paths", force: :cascade do |t|
    t.bigint "maglev_page_id"
    t.string "locale", null: false
    t.string "value", null: false
    t.boolean "canonical", default: true
    t.index ["canonical", "locale", "value"], name: "canonical_speed"
    t.index ["canonical", "maglev_page_id", "locale"], name: "scoped_canonical_speed"
    t.index ["maglev_page_id"], name: "index_maglev_page_paths_on_maglev_page_id"
  end

  create_table "maglev_pages", force: :cascade do |t|
    t.boolean "visible", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "title_translations", default: {}
    t.jsonb "seo_title_translations", default: {}
    t.jsonb "meta_description_translations", default: {}
    t.jsonb "sections_translations", default: {}
    t.integer "lock_version"
    t.jsonb "og_title_translations", default: {}
    t.jsonb "og_description_translations", default: {}
    t.jsonb "og_image_url_translations", default: {}
  end

  create_table "maglev_sites", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "locales", default: []
    t.jsonb "sections_translations", default: {}
    t.integer "lock_version"
    t.jsonb "style", default: []
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end
end
