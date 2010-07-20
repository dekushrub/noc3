class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.integer :user_id
      t.boolean :billable
      t.date :completion_date
      t.date :request_date
      t.date :scheduled_date
      t.integer :job_status_id
      t.integer :job_type_id
      t.string :description
      t.string :results
      t.integer :service_type_id
      t.string :contact_first_name
      t.string :contact_last_name
      t.string :contact_phone_number
      t.boolean :bill_labor_and_materials
      t.boolean :rush_job
      t.integer :network_id
      t.string :network_type

      t.timestamps
    end
  end

  def self.down
    drop_table :jobs
  end
end
