class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :userID
      t.string :name
      t.string :location
      t.text :description
      t.decimal :followers
      t.decimal :friends
      t.decimal :statuses

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
