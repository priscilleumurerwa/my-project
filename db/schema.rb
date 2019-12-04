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

ActiveRecord::Schema.define(version: 2019_12_04_123206) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brides", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.date "birth_date"
    t.string "gender"
    t.string "country"
    t.string "district"
    t.string "sector"
    t.string "cell"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "family_id", null: false
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["family_id"], name: "index_comments_on_family_id"
  end

  create_table "families", force: :cascade do |t|
    t.integer "category"
    t.bigint "groom_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "bride_id"
    t.index ["groom_id"], name: "index_families_on_groom_id"
  end

  create_table "grooms", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.date "birth_date"
    t.string "gender"
    t.string "country"
    t.string "district"
    t.string "sector"
    t.string "cell"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "bride_id"
    t.index ["bride_id"], name: "index_grooms_on_bride_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "families"
  add_foreign_key "families", "grooms"
end
