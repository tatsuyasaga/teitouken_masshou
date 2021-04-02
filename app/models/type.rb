class Type < ActiveHash::Base
  self.data = [
    { id: 1, name: "宅地"},
    { id: 2, name: "公衆用道路"},
    { id: 3, name: "雑種地"},
    { id: 4, name: "畑"},
    { id: 5, name: "田"},
    { id: 6, name: "原野"},
    { id: 7, name: "山林"},
    { id: 8, name: "牧場"}
  ]

  include ActiveHash::Associations
  has_many :lands
end