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

ActiveRecord::Schema.define(version: 20170901064038) do

  create_table "areas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_areas_on_city_id"
  end

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "category_id"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["category_id"], name: "index_categories_on_category_id"
  end

  create_table "cities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "moderators", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "contact"
    t.bigint "superadmin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["superadmin_id"], name: "index_moderators_on_superadmin_id"
  end

  create_table "reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "message"
    t.string "role"
    t.bigint "shop_id"
    t.bigint "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_reviews_on_comment_id"
    t.index ["shop_id"], name: "index_reviews_on_shop_id"
  end

  create_table "sales", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "contact"
    t.bigint "moderator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["moderator_id"], name: "index_sales_on_moderator_id"
  end

  create_table "shops", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.bigint "city_id"
    t.bigint "area_id"
    t.bigint "sale_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "approve"
    t.index ["area_id", "city_id", "sale_id"], name: "index_shops_on_area_id_and_city_id_and_sale_id"
    t.index ["area_id"], name: "index_shops_on_area_id"
    t.index ["category_id"], name: "index_shops_on_category_id"
    t.index ["city_id"], name: "index_shops_on_city_id"
    t.index ["sale_id"], name: "index_shops_on_sale_id"
  end

  create_table "superadmins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
