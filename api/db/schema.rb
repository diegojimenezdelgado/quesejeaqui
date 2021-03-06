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

ActiveRecord::Schema.define(:version => 20120922055343) do

  create_table "category_entities", :force => true do |t|
    t.string   "description"
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "complaints", :force => true do |t|
    t.string   "title"
    t.string   "permalink"
    t.integer  "user_id"
    t.string   "body"
    t.integer  "entity_id"
    t.string   "proposal"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "complaints", ["entity_id"], :name => "index_complaints_on_entity_id"
  add_index "complaints", ["user_id"], :name => "index_complaints_on_user_id"

  create_table "entities", :force => true do |t|
    t.string   "description"
    t.string   "name"
    t.integer  "category_entity_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "entities", ["category_entity_id"], :name => "index_entities_on_category_entity_id"

  create_table "users", :force => true do |t|
    t.string   "facebook_id"
    t.string   "email_address"
    t.string   "access_token"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
