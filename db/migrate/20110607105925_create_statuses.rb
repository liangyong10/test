class CreateStatuses < ActiveRecord::Migration
  def self.up
    create_table :statuses do |t|
      t.string :statusID
      t.text :text
      t.decimal :favarited
      t.string :reply_to_userID
      t.string :retweeted
      t.string :usr

      t.timestamps
    end
  end

  def self.down
    drop_table :statuses
  end
end
