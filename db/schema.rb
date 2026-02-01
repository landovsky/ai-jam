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

ActiveRecord::Schema[8.1].define(version: 2026_01_31_210936) do
  create_table "attendances", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "jam_session_id", null: false
    t.string "role"
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["jam_session_id"], name: "index_attendances_on_jam_session_id"
    t.index ["user_id"], name: "index_attendances_on_user_id"
  end

  create_table "authors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_authors_on_user_id"
  end

  create_table "jam_sessions", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.date "held_on"
    t.string "location_address"
    t.boolean "published", default: true
    t.string "title"
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.integer "author_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.string "image"
    t.integer "jam_session_id"
    t.boolean "published", default: false, null: false
    t.text "tags"
    t.string "title"
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_recipes_on_author_id"
    t.index ["jam_session_id"], name: "index_recipes_on_jam_session_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "bio"
    t.datetime "created_at", null: false
    t.string "email"
    t.json "interests"
    t.string "password_digest"
    t.integer "role", default: 0, null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email"
  end

  add_foreign_key "attendances", "jam_sessions"
  add_foreign_key "attendances", "users"
  add_foreign_key "authors", "users"
end
