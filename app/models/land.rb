class Land < ApplicationRecord
  with_options presence: true do
    validates :prefecture_id, numericality: {other_than: 1, message: "Select"}
    validates :city
    validates :number
    validates :type_id, numericality: {other_than: 1, message: "Select"}
    validates :acreage
end
