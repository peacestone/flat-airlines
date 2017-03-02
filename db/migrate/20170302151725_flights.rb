class Flights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.string :departure_city
      t.string :arrival_city
      t.integer :price
      t.time  :departure_time
      t.time :arival_time
      t.date :date
    end
  end
end
