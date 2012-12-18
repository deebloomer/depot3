class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :cart_id
      t.date :travel_date
      t.time :travel_time
      t.string :starting_bus_stop_id
      t.string :finishing_bus_stop_id
      t.integer :ticket_price_id
      t.decimal :price
      t.string :random_ticket_code
      t.integer :route_schedule_id
      t.string :direction

      t.timestamps
    end
  end
end
