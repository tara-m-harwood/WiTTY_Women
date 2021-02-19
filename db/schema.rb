# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_18_205842) do

  create_table "questions", force: :cascade do |t|
    t.string "quote"
    t.string "right_answer"
  end

  create_table "tests", force: :cascade do |t|
    t.integer "user_id"
    t.integer "question_id"
    t.string "user_answer"
    t.index ["question_id"], name: "index_tests_on_question_id"
    t.index ["user_id"], name: "index_tests_on_user_id"
  end

  create_table "userquestions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "question_id"
    t.string "user_answer"
    t.index ["question_id"], name: "index_userquestions_on_question_id"
    t.index ["user_id"], name: "index_userquestions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end
