class CreateVotes < ActiveRecord::Migration
  def self.up
    create_table :votes do |t|
      t.integer :secret_id
      t.integer :opinion

      t.timestamps
    end
  end

  def self.down
    drop_table :votes
  end
end
