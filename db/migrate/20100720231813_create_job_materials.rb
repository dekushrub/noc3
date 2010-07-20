class CreateJobMaterials < ActiveRecord::Migration
  def self.up
    create_table :job_materials do |t|
      t.integer :job_id
      t.integer :material_id
      t.integer :quantity

      t.timestamps
    end
  end

  def self.down
    drop_table :job_materials
  end
end
