# Girls Who Code
<br>

<hr>
### Requirements
<hr>

<table>
    <tr>        
        <th>required</th>
        <th>recommended</th>
    </tr>
    <tr>
        <td>Ruby</td>
        <td>Github account</td>
    </tr>
    <tr>
        <td>Ruby on Rails</td>
        <td>Git</td>
    </tr>
    <tr>
        <td>Bundler</td>
    </tr>
    <tr>
        <td>PostgrSQL</td>
    </tr>

</table>

<br>

<hr>
### Database
<hr>

![alt image of database](https://raw.githubusercontent.com/Aaron1515/GWC_2016_2017/master/planning/Schema01.png "Current Database: ")





    create_table "interests", force: :cascade do |t|
        t.string   "name"
        t.text     "description"
        t.datetime "created_at",  null: false
        t.datetime "updated_at",  null: false
        t.integer  "user_id"


    create_table "members", force: :cascade do |t|
        t.string  "name"
        t.integer "user_id"
        t.string  "background_color"
        t.string  "font_color"
        t.index ["user_id"], name: "index_members_on_user_id", using: :btree


    create_table "users", force: :cascade do |t|
        t.string   "email",                  default: "", null: false
        t.string   "encrypted_password",     default: "", null: false
        t.string   "reset_password_token"
        t.datetime "reset_password_sent_at"
        t.datetime "remember_created_at"
        t.integer  "sign_in_count",          default: 0,  null: false
        t.datetime "current_sign_in_at"
        t.datetime "last_sign_in_at"
        t.inet     "current_sign_in_ip"
        t.inet     "last_sign_in_ip"
        t.datetime "created_at",                          null: false
        t.datetime "updated_at",                          null: false
        t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
        t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree


<br>

<hr>
### Security
<hr>

    Adaptive Cryptographic Hash
