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

ActiveRecord::Schema.define(version: 20150610145117) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "communities", force: :cascade do |t|
    t.string   "name"
    t.string   "pickup_site"
    t.string   "tag"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "admin_id"
  end

  create_table "compost_sites", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "url"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "days"
    t.string   "hours"
    t.string   "organizer"
    t.string   "composted_by"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "food_donations", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "url"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "phone_number"
    t.string   "hours"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "food_items", force: :cascade do |t|
    t.string   "name"
    t.integer  "quantity"
    t.string   "description"
    t.integer  "poster_id"
    t.integer  "claimer_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "community_id"
    t.string   "status"
  end

  add_index "food_items", ["community_id"], name: "index_food_items_on_community_id", using: :btree

  create_table "invitee_communities", force: :cascade do |t|
    t.integer  "invitee_id"
    t.integer  "community_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "invitee_communities", ["community_id"], name: "index_invitee_communities_on_community_id", using: :btree
  add_index "invitee_communities", ["invitee_id"], name: "index_invitee_communities_on_invitee_id", using: :btree

  create_table "invitees", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_communities", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "community_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "user_communities", ["community_id"], name: "index_user_communities_on_community_id", using: :btree
  add_index "user_communities", ["user_id"], name: "index_user_communities_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "food_items", "communities"
  add_foreign_key "invitee_communities", "communities"
  add_foreign_key "invitee_communities", "invitees"
  add_foreign_key "user_communities", "communities"
  add_foreign_key "user_communities", "users"
end
