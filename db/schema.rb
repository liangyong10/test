# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110607105925) do

  create_table "status", :primary_key => "statusID", :force => true do |t|
    t.string  "text",            :limit => 512, :default => ""
    t.boolean "favorited",                      :default => false
    t.string  "reply_to_userID", :limit => 20,  :default => ""
    t.string  "retweeted",       :limit => 20,  :default => ""
    t.string  "usr",             :limit => 20,                     :null => false
    t.date    "date"
    t.time    "time"
  end

  create_table "statuses", :force => true do |t|
    t.string   "statusID"
    t.text     "text"
    t.integer  "favarited",       :limit => 10, :precision => 10, :scale => 0
    t.string   "reply_to_userID"
    t.string   "retweeted"
    t.string   "usr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :primary_key => "userID", :force => true do |t|
    t.string  "name",        :limit => 128, :default => ""
    t.string  "location",    :limit => 128, :default => ""
    t.string  "description", :limit => 512, :default => ""
    t.integer "followers",                  :default => 0
    t.integer "friends",                    :default => 0
    t.integer "statuses",                   :default => 0
    t.date    "createAt"
  end

end
