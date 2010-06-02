class CreateSecrets < ActiveRecord::Migration
  def self.up
    create_table :secrets do |t|
      t.integer :post_id
      t.string :image_url

      t.timestamps
    end
  end

  def self.down
    drop_table :secrets
  end
end
