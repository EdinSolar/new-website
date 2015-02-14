class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username, unique: true, index: true
      t.string :full_name
      t.string :email_address, unique: true, index: true
      t.string :password_digest
      t.string :password_salt
      t.timestamps null: false

      t.references :role, index: true
    end
  end

  def self.down
    drop_table :users
  end
end
