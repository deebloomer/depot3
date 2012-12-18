class CreateRouteDetails < ActiveRecord::Migration
  def change
    create_table :route_details do |t|
      t.integer :route_id
      t.integer :stop_id
      t.string :stop_name
      t.integer :minutes_from_start
      t.integer :zone_no

      t.timestamps
    end
  end
end
