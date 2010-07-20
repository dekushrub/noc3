class CreateLineTypes < ActiveRecord::Migration
  def self.up
    create_table :line_types do |t|
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :line_types
  end
end
