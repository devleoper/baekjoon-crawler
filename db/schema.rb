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

ActiveRecord::Schema.define(version: 20150517093335) do

  create_table "baekjoon_users", force: :cascade do |t|
    t.string   "slug",         default: "0", null: false
    t.text     "info"
    t.integer  "trial",        default: 0,   null: false
    t.integer  "success",      default: 0,   null: false
    t.integer  "fail",         default: 0,   null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "last_crawled"
  end

  add_index "baekjoon_users", ["slug"], name: "index_baekjoon_users_on_slug"

  create_table "folder_progresses", force: :cascade do |t|
    t.integer  "status"
    t.integer  "folder_id"
    t.integer  "baekjoon_user_id"
    t.integer  "progress"
    t.integer  "total"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "folders", force: :cascade do |t|
    t.string   "slug"
    t.string   "name"
    t.integer  "parent_folder_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "original_id"
    t.integer  "type",             default: 0, null: false
  end

  add_index "folders", ["original_id"], name: "index_folders_on_original_id"
  add_index "folders", ["parent_folder_id"], name: "index_folders_on_parent_folder_id"
  add_index "folders", ["slug"], name: "index_folders_on_slug"
  add_index "folders", ["type"], name: "index_folders_on_type"

  create_table "problem_folder_relations", force: :cascade do |t|
    t.integer "problem_id"
    t.integer "folder_id"
    t.integer "number"
  end

  add_index "problem_folder_relations", ["folder_id"], name: "index_problem_folder_relations_on_folder_id"
  add_index "problem_folder_relations", ["problem_id"], name: "index_problem_folder_relations_on_problem_id"

  create_table "problem_solvings", force: :cascade do |t|
    t.integer  "problem_id",       default: 0,     null: false
    t.integer  "baekjoon_user_id", default: 0,     null: false
    t.boolean  "solved",           default: false, null: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "problem_solvings", ["baekjoon_user_id"], name: "index_problem_solvings_on_baekjoon_user_id"
  add_index "problem_solvings", ["problem_id"], name: "index_problem_solvings_on_problem_id"

  create_table "problems", force: :cascade do |t|
    t.integer  "code"
    t.string   "title"
    t.integer  "trial"
    t.integer  "success"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "percentage"
  end

end
