class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string :name
      t.boolean :admin, default: false
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :roles
  end
end
