class ApplicationDatum < ApplicationRecord
  with_options presence: true do
    validates :reason_date
    validates :reason
    validates :receipt_number
    validates :destination_id, numericality: {other_than: 1, message: "Select"}
    validates :tax
  end

  belongs_to :user
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :destination_id
end
