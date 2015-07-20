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

ActiveRecord::Schema.define(version: 20150620213316) do

  create_table "categories", primary_key: "cat_id", force: :cascade do |t|
    t.string   "cat_title",   limit: 255
    t.integer  "cat_pages",   limit: 4
    t.integer  "cat_subcats", limit: 4
    t.integer  "cat_files",   limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "links", primary_key: "cl_from", force: :cascade do |t|
    t.string   "cl_to",             limit: 255
    t.binary   "cl_sortkey",        limit: 65535
    t.date     "cl_timestamp"
    t.binary   "cl_sortkey_prefix", limit: 65535
    t.binary   "cl_collation",      limit: 65535
    t.string   "cl_type",           limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
