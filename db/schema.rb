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

ActiveRecord::Schema.define(version: 20150329181117) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clubs", force: :cascade do |t|
    t.string   "name"
    t.string   "password_coach"
    t.string   "password_players"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "coaching_tables", force: :cascade do |t|
    t.string   "name"
    t.string   "path"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "team_id"
  end

  create_table "leaders", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leaders_teams", id: false, force: :cascade do |t|
    t.integer "leader_id", null: false
    t.integer "team_id",   null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "stat_id"
  end

  create_table "matches_players", id: false, force: :cascade do |t|
    t.integer "match_id",         null: false
    t.integer "player_id",        null: false
    t.integer "servingEso"
    t.integer "servingOK"
    t.integer "servingError"
    t.integer "hittingKill"
    t.integer "hittingOK"
    t.integer "hittingError"
    t.integer "passingKill"
    t.integer "passingOK"
    t.integer "passingError"
    t.integer "blockingKill"
    t.integer "blockingOK"
    t.integer "blockingError"
    t.integer "settingExcellent"
    t.integer "settingOK"
    t.integer "settingError"
    t.integer "defenseExcellent"
    t.integer "defenseOK"
    t.integer "defenseError"
  end

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "team_id"
  end

  create_table "players_positions", id: false, force: :cascade do |t|
    t.integer "position_id", null: false
    t.integer "player_id",   null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stats", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "club_id"
  end

end
