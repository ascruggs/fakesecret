class ChangePostWeekToDate < ActiveRecord::Migration
  def self.up         
    change_column :posts, :week, :date
  end

  def self.down                       
    change_column :posts, :week, :string
  end
end
