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

ActiveRecord::Schema.define(version: 2019_02_28_184216) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "industry"
    t.string "category"
    t.string "logo"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "latestnews"
    t.string "latestnews_summary"
    t.string "latestnews_media"
    t.string "teampicture"
  end

  create_table "company_practices", force: :cascade do |t|
    t.bigint "company_value_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_value_id"], name: "index_company_practices_on_company_value_id"
  end

  create_table "company_values", force: :cascade do |t|
    t.bigint "company_id"
    t.bigint "value_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_values_on_company_id"
    t.index ["value_id"], name: "index_company_values_on_value_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "category"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_events_on_company_id"
  end

  create_table "follows", force: :cascade do |t|
    t.string "followable_type", null: false
    t.bigint "followable_id", null: false
    t.string "follower_type", null: false
    t.bigint "follower_id", null: false
    t.boolean "blocked", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["followable_id", "followable_type"], name: "fk_followables"
    t.index ["followable_type", "followable_id"], name: "index_follows_on_followable_type_and_followable_id"
    t.index ["follower_id", "follower_type"], name: "fk_follows"
    t.index ["follower_type", "follower_id"], name: "index_follows_on_follower_type_and_follower_id"
  end

  create_table "job_offers", force: :cascade do |t|
    t.string "description"
    t.bigint "company_id"
    t.bigint "position_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "manager_name"
    t.string "manager_linkedin"
    t.string "photomanager"
    t.index ["company_id"], name: "index_job_offers_on_company_id"
    t.index ["position_id"], name: "index_job_offers_on_position_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "talent_practices", force: :cascade do |t|
    t.bigint "talent_value_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["talent_value_id"], name: "index_talent_practices_on_talent_value_id"
  end

  create_table "talent_values", force: :cascade do |t|
    t.bigint "talent_id"
    t.bigint "value_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["talent_id"], name: "index_talent_values_on_talent_id"
    t.index ["value_id"], name: "index_talent_values_on_value_id"
  end

  create_table "talents", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "avatar"
    t.string "experience"
    t.string "url_linkedin"
    t.bigint "position_id"
    t.boolean "admin", default: true
    t.index ["email"], name: "index_talents_on_email", unique: true
    t.index ["position_id"], name: "index_talents_on_position_id"
    t.index ["reset_password_token"], name: "index_talents_on_reset_password_token", unique: true
  end

  create_table "values", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "icone"
  end

  add_foreign_key "company_practices", "company_values"
  add_foreign_key "company_values", "\"values\"", column: "value_id"
  add_foreign_key "company_values", "companies"
  add_foreign_key "events", "companies"
  add_foreign_key "job_offers", "companies"
  add_foreign_key "job_offers", "positions"
  add_foreign_key "talent_practices", "talent_values"
  add_foreign_key "talent_values", "\"values\"", column: "value_id"
  add_foreign_key "talent_values", "talents"
  add_foreign_key "talents", "positions"
end
