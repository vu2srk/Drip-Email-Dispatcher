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

ActiveRecord::Schema.define(:version => 20120815223816) do

  create_table "customers", :force => true do |t|
    t.string   "email"
    t.string   "name"
    t.integer  "drip_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dispatched_drips", :force => true do |t|
    t.integer  "customer_id"
    t.integer  "drip_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "dispatched_emails", :force => true do |t|
    t.integer  "customer_id"
    t.date     "sent_date"
    t.integer  "email_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "dispatched_drip_id"
  end

  create_table "drip_emails", :force => true do |t|
    t.integer  "email_id"
    t.integer  "drip_id"
    t.integer  "sequence"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "drips", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "emails", :force => true do |t|
    t.string   "subject"
    t.string   "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "interval"
    t.integer  "sequence"
    t.integer  "drip_id"
  end

  create_table "run_drips", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "drip_id"
  end

end
