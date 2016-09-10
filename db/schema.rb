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

ActiveRecord::Schema.define(version: 20160910140630) do

  create_table "reports", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "state_id"
    t.integer  "lga_id"
    t.integer  "election_id"
    t.string   "summary",     null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["election_id"], name: "index_reports_on_election_id"
    t.index ["lga_id"], name: "index_reports_on_lga_id"
    t.index ["state_id"], name: "index_reports_on_state_id"
    t.index ["user_id"], name: "index_reports_on_user_id"
  end

end
