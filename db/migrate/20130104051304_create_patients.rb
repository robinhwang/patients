class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
    	t.string   :first_name,    :limit => 30, :null => false
    	t.string   :middle_name,   :limit => 10, :null => false
    	t.string   :last_name,     :limit => 30, :null => false
    	t.string   :gender
    	t.date     :birthday
    	t.string   :status
    	t.integer  :viewed_count
    	t.integer  :user_status,   :default => 1
    	t.integer  :location_id



      t.timestamps
    end
  end
end
