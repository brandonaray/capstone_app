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

ActiveRecord::Schema.define(version: 2019_04_28_143710) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.string "logo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_songs", force: :cascade do |t|
    t.integer "song_id"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_songs", force: :cascade do |t|
    t.integer "song_version_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "event_user_id"
  end

  create_table "event_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
  end

  create_table "events", force: :cascade do |t|
    t.integer "event_token"
    t.integer "event_duration"
    t.string "event_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "song_versions", force: :cascade do |t|
    t.integer "song_id"
    t.string "label"
    t.integer "duration"
    t.string "song_url"
    t.string "lyrics"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.string "artist"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
