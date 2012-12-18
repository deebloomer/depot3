class CreateTicketPrices < ActiveRecord::Migration
  def change
    create_table :ticket_prices do |t|
      t.integer :no_of_zones
      t.decimal :price

      t.timestamps
    end
  end
end
