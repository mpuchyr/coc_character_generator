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

ActiveRecord::Schema[7.0].define(version: 2022_12_05_210942) do
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
    t.integer "san"
    t.integer "build"
    t.index ["owner_id"], name: "index_characters_on_owner_id"
  end

  create_table "occupations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.integer "accounting", default: 5
    t.integer "anthropology", default: 1
    t.integer "appraise", default: 5
    t.integer "archaeology", default: 1
    t.integer "charm", default: 15
    t.integer "climb", default: 20
    t.integer "disguise", default: 5
    t.integer "dodge"
    t.integer "drive_auto", default: 20
    t.integer "elec_repair", default: 10
    t.integer "fast_talk", default: 5
    t.integer "fighting_brawl", default: 25
    t.integer "firearms_handgun", default: 20
    t.integer "firearms_rifle_shotgun", default: 25
    t.integer "first_aid", default: 30
    t.integer "history", default: 5
    t.integer "intimidate", default: 15
    t.integer "jump", default: 20
    t.integer "law", default: 5
    t.integer "library_use", default: 20
    t.integer "listen", default: 20
    t.integer "locksmith", default: 1
    t.integer "mech_repair", default: 10
    t.integer "medicine", default: 1
    t.integer "natural_world", default: 10
    t.integer "navigate", default: 10
    t.integer "occult", default: 5
    t.integer "persuade", default: 10
    t.integer "psychoanalysis", default: 1
    t.integer "psychology", default: 10
    t.integer "ride", default: 5
    t.integer "sleight_of_hand", default: 10
    t.integer "spot_hidden", default: 25
    t.integer "stealth", default: 20
    t.integer "swim", default: 20
    t.integer "throw", default: 20
    t.integer "track", default: 10
    t.integer "language_own"
    t.integer "cthulhu_mythos"
    t.integer "credit_rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "character_id"
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

  add_foreign_key "characters", "users", column: "owner_id"
end
