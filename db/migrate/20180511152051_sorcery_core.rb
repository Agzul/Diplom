class SorceryCore < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string     :login
      t.string     :email,            null: false
      t.string     :crypted_password
      t.string     :fn
      t.string     :ln
      t.string     :sn
      t.date       :birthday
      t.string     :gender
      t.attachment :image
      t.string     :salt
      t.references :role,             foreign_key: true

      t.timestamps                    null: false
    end

    add_index :users, :email, unique: true
    add_index :users, :login, unique: true
  end
end
