class Reservations < ActiveRecord::Migration[5.0]
  def change
    belongs_to :flights
    belongs_to :passengers
  end
end
