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

ActiveRecord::Schema.define(version: 2020_05_13_231934) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "autocompletes", force: :cascade do |t|
    t.string "address"
    t.integer "street_number"
    t.string "locality"
    t.string "route"
    t.string "administrative_area_level_1"
    t.string "country"
    t.integer "postal_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "fsa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deliveries", force: :cascade do |t|
    t.string "name"
    t.string "postal_code"
    t.float "longitude"
    t.float "latitude"
    t.geography "coordinates", limit: {:srid=>4326, :type=>"st_point", :geographic=>true}
    t.jsonb "geojson"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coordinates"], name: "index_deliveries_on_coordinates", using: :gist
  end

  create_table "fsas", force: :cascade do |t|
    t.string "fsacode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "postals", force: :cascade do |t|
    t.string "postalcode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "fsa_id"
    t.string "fsa_fsacode"
  end

  create_table "shapes", force: :cascade do |t|
    t.string "fsa"
    t.string "btm_left_x"
    t.string "btm_left_y"
    t.string "btm_right_x"
    t.string "btm_right_y"
    t.string "top_right_x"
    t.string "top_right_y"
    t.string "top_left_x"
    t.string "top_left_y"
    t.string "polygon"
    t.string "point"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zones", force: :cascade do |t|
    t.string "name"
    t.geography "sw_lon", limit: {:srid=>4326, :type=>"st_point", :geographic=>true}
    t.geography "sw_lat", limit: {:srid=>4326, :type=>"st_point", :geographic=>true}
    t.geography "ne_lon", limit: {:srid=>4326, :type=>"st_point", :geographic=>true}
    t.geography "ne_lat", limit: {:srid=>4326, :type=>"st_point", :geographic=>true}
    t.geometry "geometry", limit: {:srid=>4326, :type=>"geometry"}
    t.jsonb "geojson"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["geometry"], name: "index_zones_on_geometry", using: :gist
    t.index ["ne_lat"], name: "index_zones_on_ne_lat", using: :gist
    t.index ["ne_lon"], name: "index_zones_on_ne_lon", using: :gist
    t.index ["sw_lat"], name: "index_zones_on_sw_lat", using: :gist
    t.index ["sw_lon"], name: "index_zones_on_sw_lon", using: :gist
  end

end
