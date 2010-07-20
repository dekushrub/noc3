class AddNickToBuildings < ActiveRecord::Migration
  def self.up
    add_column :buildings, :nick, :string
  end

  def self.down
    remove_column :buildings, :nick
  end
end
