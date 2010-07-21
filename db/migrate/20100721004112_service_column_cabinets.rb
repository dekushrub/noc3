class ServiceColumnCabinets < ActiveRecord::Migration
  def self.up
    rename_column :cabinets, :service_type_id, :service_id
  end

  def self.down
    rename_column :cabinets, :service_id, :service_type_id
  end
end
