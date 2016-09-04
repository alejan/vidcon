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

ActiveRecord::Schema.define(version: 20160903195924) do

  create_table "administradors", force: :cascade do |t|
    t.string "name"
    t.string "last"
    t.string "email"
    t.string "password_digest"
  end

  create_table "concursos", force: :cascade do |t|
    t.string  "name"
    t.string  "vid_url"
    t.date    "open_date"
    t.date    "close_date"
    t.text    "winner_price"
    t.integer "administrador_id"
    t.string  "avatar"
    t.index ["administrador_id"], name: "index_concursos_on_administrador_id"
  end

  create_table "vidclips", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "video_id"
    t.string   "vid"
    t.text     "message"
    t.string   "progress"
    t.string   "url"
    t.string   "preview_url"
    t.string   "converted_url"
    t.index ["video_id"], name: "index_vidclips_on_video_id"
  end

  create_table "videos", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.string   "last"
    t.string   "state"
    t.string   "url_original"
    t.string   "url_converted"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "concurso_id"
    t.index ["concurso_id"], name: "index_videos_on_concurso_id"
  end

end
