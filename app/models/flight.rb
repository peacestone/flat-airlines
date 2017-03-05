class Flight < ApplicationRecord
  has_many :reservations
  has_many :passengers, through: :reservations

  scope :query_flights, ->(query) {where("departure_city = ? AND arrival_city = ? AND date = ?", query[:from].downcase, query[:to].downcase, query[:depart_date])}
end
