class MakePostWeekUnique < ActiveRecord::Migration
  def self.up
    add_index :posts, :week, :unique => true
  end

  def self.down    
    remove_index :posts, :week
  end
end
