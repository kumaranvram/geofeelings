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

ActiveRecord::Schema.define(version: 20130630020452) do

  create_table "terms", force: true do |t|
    t.string   "word"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "terms", ["word"], name: "index_terms_on_word", using: :btree

  create_table "tweets", force: true do |t|
    t.float    "sentiment"
    t.decimal  "lat",        precision: 9, scale: 6
    t.decimal  "lng",        precision: 9, scale: 6
    t.string   "text"
    t.datetime "tweet_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
