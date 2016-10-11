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

ActiveRecord::Schema.define(version: 20161008191142) do

  create_table "comments", force: :cascade do |t|
    t.string   "content",    null: false
    t.integer  "report_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["report_id"], name: "index_comments_on_report_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "elections", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "tag"
    t.string   "year",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "lgas", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_lgas_on_state_id"
  end

  create_table "reports", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "state_id"
    t.integer  "lga_id"
    t.integer  "election_id"
    t.string   "content",     null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["election_id"], name: "index_reports_on_election_id"
    t.index ["lga_id"], name: "index_reports_on_lga_id"
    t.index ["state_id"], name: "index_reports_on_state_id"
    t.index ["user_id"], name: "index_reports_on_user_id"
  end

  create_table "states", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "code",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "phone_number"
    t.string   "username"
    t.string   "password_digest"
    t.string   "token"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
