class ApplicationDatum < ApplicationRecord

  belongs_to :user
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :destination

end