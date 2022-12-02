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

ActiveRecord::Schema[7.0].define(version: 2022_12_02_205038) do
  create_table "characters", force: :cascade do |t|
    t.integer "owner_id", null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "str"
    t.integer "con"
    t.integer "siz"
    t.integer "dex"
    t.integer "app"
    t.integer "pow"
    t.integer "edu"
    t.integer "luck"
    t.integer "age"
    t.string "damage_bonus"
    t.integer "hp"
    t.integer "mov"
    t.string "pronoun"
    t.string "max_sanity"
    t.integer "occupation_id"
    t.integer "mp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "int"
    t.index ["owner_id"], name: "index_characters_on_owner_id"
  end

  create_table "occupations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "characters", "owners"
end
