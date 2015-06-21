# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150621031846) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "facebook_accounts", force: :cascade do |t|
    t.text     "account_name"
    t.integer  "number_of"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "identities", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "identities_users", force: :cascade do |t|
    t.integer "identity_id"
    t.integer "user_id"
  end

  create_table "instagram_accounts", force: :cascade do |t|
    t.text     "account_name"
    t.integer  "followers"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "twitter_accounts", force: :cascade do |t|
    t.text     "account_name"
    t.integer  "followers"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.text     "contact_name"
    t.text     "company_name"
    t.text     "description"
    t.integer  "age"
    t.text     "email"
    t.text     "mobile_number"
    t.text     "website"
    t.text     "goals"
    t.text     "requirements"
    t.boolean  "connect"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users_wanted_connections", force: :cascade do |t|
    t.integer "user_id"
    t.integer "wanted_connection_id"
  end

  create_table "wanted_connections", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "youtube_accounts", force: :cascade do |t|
    t.text     "account_name"
    t.integer  "subscribers"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
