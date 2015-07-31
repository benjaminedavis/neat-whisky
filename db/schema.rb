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

ActiveRecord::Schema.define(version: 20150729210549) do

  create_table "comments", force: :cascade do |t|
    t.string   "comment"
    t.integer  "member_id"
    t.integer  "whiskey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["member_id"], name: "index_comments_on_member_id"
  add_index "comments", ["whiskey_id"], name: "index_comments_on_whiskey_id"

  create_table "event_members", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "member_id"
    t.boolean  "attended"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "event_members", ["event_id"], name: "index_event_members_on_event_id"
  add_index "event_members", ["member_id"], name: "index_event_members_on_member_id"

  create_table "events", force: :cascade do |t|
    t.date     "date"
    t.string   "host"
    t.string   "theme"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "members", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "whiskeys", force: :cascade do |t|
    t.string   "name"
    t.string   "region"
    t.string   "country"
    t.string   "wtype"
    t.string   "malt"
    t.integer  "age"
    t.integer  "price"
    t.float    "abv"
    t.string   "pic1"
    t.integer  "event_id"
    t.integer  "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "whiskeys", ["event_id"], name: "index_whiskeys_on_event_id"
  add_index "whiskeys", ["member_id"], name: "index_whiskeys_on_member_id"

end
