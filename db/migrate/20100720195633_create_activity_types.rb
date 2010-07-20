class CreateActivityTypes < ActiveRecord::Migration
  def self.up
    create_table :activity_types do |t|
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :activity_types
  end
end
