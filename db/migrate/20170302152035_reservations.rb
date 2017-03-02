class Reservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.belongs_to :flight
      t.belongs_to :passenger
    end
  end
end
