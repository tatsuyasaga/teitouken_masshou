class Building < ApplicationRecord
  with_options presence: true do
    validates :prefecture_id, numericality: {other_than: 1, message: "Select"}
    validates :city
    validates :number
    validates :use_id, numericality: {other_than: 1, message: "Select"}
    validates :construction
    validates :floor_space
  end

  belongs_to :application_datum_id
end
