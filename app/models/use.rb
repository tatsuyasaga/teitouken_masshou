class Use < ActiveHash::Base
  self.data = [
    { id: 1, name: "居宅"},
    { id: 2, name: "居宅・車庫"},
    { id: 3, name: "居宅・店舗"},
    { id: 4, name: "共同住宅"},
    { id: 5, name: "居宅・事務所"},
    { id: 6, name: "居宅・倉庫"}
  ]
  
  include ActiveHash::Associations
  has_many :buildings
end