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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2020_03_04_130453) do
=======
ActiveRecord::Schema.define(version: 2020_03_04_125945) do
>>>>>>> master

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "badges", force: :cascade do |t|
    t.text "description"
    t.string "name"
    t.string "icon_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string "model"
    t.string "brand"
    t.integer "year"
    t.bigint "user_id"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_cars_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "challenges", force: :cascade do |t|
    t.text "description"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_challenges_on_category_id"
  end

  create_table "daily_progresses", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "tree_amount"
    t.boolean "daily_challenge_completed"
    t.bigint "challenge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_id"], name: "index_daily_progresses_on_challenge_id"
    t.index ["user_id"], name: "index_daily_progresses_on_user_id"
  end

  create_table "notificatons", force: :cascade do |t|
    t.bigint "user_id"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_notificatons_on_user_id"
  end

  create_table "profile_badges", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "badge_id"
    t.integer "stars"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["badge_id"], name: "index_profile_badges_on_badge_id"
    t.index ["user_id"], name: "index_profile_badges_on_user_id"
  end

  create_table "self_ratings", force: :cascade do |t|
    t.integer "overall_score"
    t.integer "pickup_trash_score"
    t.integer "conscious_score"
    t.integer "score"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_self_ratings_on_user_id"
  end

  create_table "tips", force: :cascade do |t|
    t.text "description"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_tips_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "cars", "users"
  add_foreign_key "challenges", "categories"
  add_foreign_key "daily_progresses", "challenges"
  add_foreign_key "daily_progresses", "users"
  add_foreign_key "notificatons", "users"
  add_foreign_key "profile_badges", "badges"
  add_foreign_key "profile_badges", "users"
  add_foreign_key "self_ratings", "users"
  add_foreign_key "tips", "categories"
end
