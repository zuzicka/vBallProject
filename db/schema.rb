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

ActiveRecord::Schema.define(version: 20150328171605) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assistants", force: :cascade do |t|
    t.string "name"
    t.string "email"
  end

  create_table "clubs", force: :cascade do |t|
    t.string   "name"
    t.string   "password_coach"
    t.string   "password_players"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "coach_tables", force: :cascade do |t|
    t.string   "name"
    t.string   "path"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "coaches", force: :cascade do |t|
    t.string "name"
    t.string "email"
  end

  create_table "coaches_teams", id: false, force: :cascade do |t|
    t.integer "coach_id", null: false
    t.integer "team_id",  null: false
  end

  create_table "players", force: :cascade do |t|
    t.string  "name"
    t.integer "number"
  end

  create_table "players_positions", id: false, force: :cascade do |t|
    t.integer "position_id", null: false
    t.integer "player_id",   null: false
  end

  create_table "players_sets", id: false, force: :cascade do |t|
    t.integer "set_id",           null: false
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

  create_table "positions", force: :cascade do |t|
    t.string "type"
  end

  create_table "sets", force: :cascade do |t|
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stats", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
  end

end
