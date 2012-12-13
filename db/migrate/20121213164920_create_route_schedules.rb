class CreateRouteSchedules < ActiveRecord::Migration
  def change
    create_table :route_schedules do |t|
      t.time :departure_time
      t.string :stop_id
      t.string :integer
      t.boolean :outbound
      t.boolean :inbound
      t.integer :capacity

      t.timestamps
    end
  end
end
