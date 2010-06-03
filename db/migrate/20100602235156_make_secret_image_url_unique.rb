class MakeSecretImageUrlUnique < ActiveRecord::Migration
  def self.up
    add_index :secrets, :image_url, :unique => true
  end

  def self.down                             
    remove_index :secrets, :image_url
  end
end
