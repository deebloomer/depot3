class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :outbound_code
      t.string :inbound_code
      t.boolean :return_route
      t.string :start
      t.string :finish

      t.timestamps
    end
  end
end
