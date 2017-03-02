class Passengers < ActiveRecord::Migration[5.0]
  def change
    create_table :passengers do |t|
      t.string :name
      t.string :email
      t.string :nationality
      t.string :password_digest
      t.string :credit_card_number
      t.integer :flat_air_miles
      t.belongs_to :special_request_id
      t.date :date_of_birth
    end
  end
end
