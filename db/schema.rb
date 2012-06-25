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

ActiveRecord::Schema.define(:version => 20120625030724) do

  create_table "areas", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "colmeia", :force => true do |t|
    t.integer  "area_id"
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "colmeia", ["area_id"], :name => "index_colmeia_on_area_id"

  create_table "colmeias", :force => true do |t|
    t.integer  "area_id"
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "colmeias", ["area_id"], :name => "index_colmeias_on_area_id"

  create_table "colmeias_eventos", :id => false, :force => true do |t|
    t.integer "evento_id"
    t.integer "colmeia_id"
  end

  create_table "eventos", :force => true do |t|
    t.date     "data_prevista"
    t.date     "data_realizada"
    t.string   "status"
    t.integer  "tipo_evento_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "eventos", ["tipo_evento_id"], :name => "index_eventos_on_tipo_evento_id"

  create_table "eventos_colmeias_join", :id => false, :force => true do |t|
    t.integer "evento_id"
    t.integer "colmeia_id"
  end

  create_table "tipo_eventos", :force => true do |t|
    t.string   "nome"
    t.string   "periodo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
