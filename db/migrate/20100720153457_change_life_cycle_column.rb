class ChangeLifeCycleColumn < ActiveRecord::Migration
  def self.up
    rename_column :devices, :life_cyle, :life_cycle
    change_column :devices, :life_cycle, :integer
  end

  def self.down
    change_column :devices, :life_cycle, :time
    rename_column :devices, :life_cycle, :life_cyle
  end
end
