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

ActiveRecord::Schema.define(version: 20151106062755) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "booking_enquiries", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.string   "organisation_name"
    t.datetime "event_date"
    t.datetime "event_time"
    t.string   "event_location"
    t.string   "event_type"
    t.text     "performance_requirments"
    t.integer  "expected_attendance"
    t.string   "budget"
    t.text     "access_details"
    t.text     "parking_details"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "casein_admin_users", force: :cascade do |t|
    t.string   "login",                           null: false
    t.string   "name"
    t.string   "email"
    t.integer  "access_level",        default: 0, null: false
    t.string   "crypted_password",                null: false
    t.string   "password_salt",                   null: false
    t.string   "persistence_token"
    t.string   "single_access_token"
    t.string   "perishable_token"
    t.integer  "login_count",         default: 0, null: false
    t.integer  "failed_login_count",  default: 0, null: false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.string   "time_zone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.text     "details"
    t.string   "image"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "slug"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "state"
    t.string   "event_status"
  end

  add_index "events", ["slug"], name: "index_events_on_slug", unique: true, using: :btree

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "images", force: :cascade do |t|
    t.string   "image"
    t.integer  "production_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "post_id"
  end

  add_index "images", ["post_id"], name: "index_images_on_post_id", using: :btree
  add_index "images", ["production_id"], name: "index_images_on_production_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.string   "venue"
    t.string   "street_add"
    t.string   "city"
    t.string   "state"
    t.string   "postcode"
    t.string   "country"
    t.integer  "session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "locations", ["session_id"], name: "index_locations_on_session_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_1"
    t.string   "image_2"
    t.string   "image_3"
    t.string   "image_4"
    t.string   "image_5"
    t.string   "slug"
    t.string   "post_status"
    t.datetime "published_at"
  end

  add_index "posts", ["slug"], name: "index_posts_on_slug", unique: true, using: :btree

  create_table "productions", force: :cascade do |t|
    t.string   "name"
    t.text     "synopsis"
    t.text     "tech_summary"
    t.string   "video_link"
    t.string   "tech_spec_link"
    t.string   "media_pack_link"
    t.string   "slug"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "catagory"
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "start_time"
    t.time     "duration"
    t.string   "booking_link"
    t.text     "session_details"
    t.integer  "event_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "location_id"
  end

  add_index "sessions", ["event_id"], name: "index_sessions_on_event_id", using: :btree
  add_index "sessions", ["location_id"], name: "index_sessions_on_location_id", using: :btree

  add_foreign_key "images", "posts"
  add_foreign_key "images", "productions"
  add_foreign_key "locations", "sessions"
  add_foreign_key "sessions", "events"
  add_foreign_key "sessions", "locations"
end
