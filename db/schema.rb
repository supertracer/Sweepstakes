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

ActiveRecord::Schema.define(version: 20150810120026) do

  create_table "clients", force: :cascade do |t|
    t.string   "client_name",    limit: 255
    t.string   "client_email",   limit: 255
    t.string   "client_phone",   limit: 255
    t.string   "company_name",   limit: 255
    t.string   "company_url",    limit: 255
    t.string   "participant_id", limit: 255
    t.integer  "contest_id",     limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "contests", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.integer  "client_id",      limit: 4
    t.integer  "participant_id", limit: 4
    t.integer  "quiz_id",        limit: 4
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "participants", force: :cascade do |t|
    t.string   "participant_name",  limit: 255
    t.string   "participant_email", limit: 255
    t.string   "participant_phone", limit: 255
    t.integer  "contest_id",        limit: 4
    t.string   "answer",            limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "prizes", force: :cascade do |t|
    t.string   "prize_type",  limit: 255
    t.integer  "prize_value", limit: 4
    t.integer  "winner_id",   limit: 4
    t.integer  "contest_id",  limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "quizzes", force: :cascade do |t|
    t.integer  "contest_id",   limit: 4
    t.text     "ques_content", limit: 65535
    t.string   "opt_A",        limit: 255
    t.string   "opt_B",        limit: 255
    t.string   "opt_c",        limit: 255
    t.string   "opt_d",        limit: 255
    t.string   "correct_opt",  limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "winners", force: :cascade do |t|
    t.integer  "prize_id",       limit: 4
    t.integer  "contest_id",     limit: 4
    t.integer  "participant_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
