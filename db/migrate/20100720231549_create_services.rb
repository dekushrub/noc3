class CreateServices < ActiveRecord::Migration
  def self.up
    create_table :services do |t|
      t.string :descripton
      t.string :fund_to_credit
      t.string :billing_period

      t.timestamps
    end
  end

  def self.down
    drop_table :services
  end
end
