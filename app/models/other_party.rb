class OtherParty < ApplicationRecord
  with_options presence: true do
    validates :address
    validates :name
    validates :ceo
    validates :number, numericality: { only_integer: true, less_than: 1000000000000, message: "Input only number"}
  end

  belongs_to :application_datum
end
