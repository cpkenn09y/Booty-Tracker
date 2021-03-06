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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131214185624) do

  create_table "authentications", :force => true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cohorts", :id => false, :force => true do |t|
    t.integer  "c_id"
    t.string   "cohort_name"
    t.string   "location"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "cohort_id"
    t.string   "hometown"
    t.text     "linkedin_url"
    t.string   "facebook_url"
    t.string   "twitter_url"
    t.string   "github_url"
    t.string   "blog"
    t.string   "quora"
    t.string   "hacker_news_url"
    t.string   "role"
    t.string   "git_location"
    t.string   "linkedin_location"
    t.string   "headline"
    t.string   "current_location"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "latitude"
    t.string   "longitude"
  end

end
