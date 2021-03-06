class Destination < ActiveHash::Base
  self.data = [
    { id: 1, name: "管轄の法務局を選択" },
    { id: 2, name: "札幌法務局" },
    { id: 3, name: "函館地方法務局" },
    { id: 4, name: "旭川地方法務局" },
    { id: 5, name: "釧路地方法務局" },
    { id: 6, name: "仙台法務局" },
    { id: 7, name: "福島地方法務局" },
    { id: 8, name: "山形地方法務局" },
    { id: 9, name: "盛岡地方法務局" },
    { id: 10, name: "秋田地方法務局" },
    { id: 11, name: "青森地方法務局" },
    { id: 12, name: "東京法務局" },
    { id: 13, name: "横浜地方法務局" },
    { id: 14, name: "さいたま地方法務局" },
    { id: 15, name: "千葉地方法務局" },
    { id: 16, name: "水戸地方法務局" },
    { id: 17, name: "宇都宮地方法務局" },
    { id: 18, name: "前橋地方法務局" },
    { id: 19, name: "静岡地方法務局" },
    { id: 20, name: "甲府地方法務局" },
    { id: 21, name: "長野地方法務局" },
    { id: 22, name: "新潟地方法務局" },
    { id: 23, name: "名古屋法務局" },
    { id: 24, name: "津地方法務局" },
    { id: 25, name: "岐阜地方法務局" },
    { id: 26, name: "福井地方法務局" },
    { id: 27, name: "金沢地方法務局" },
    { id: 28, name: "富山地方法務局" },
    { id: 29, name: "大阪法務局" },
    { id: 30, name: "京都地方法務局" },
    { id: 31, name: "神戸地方法務局" },
    { id: 32, name: "奈良地方法務局" },
    { id: 33, name: "大津地方法務局" },
    { id: 34, name: "和歌山地方法務局" },
    { id: 35, name: "広島法務局" },
    { id: 36, name: "山口地方法務局" },
    { id: 37, name: "岡山地方法務局" },
    { id: 38, name: "鳥取地方法務局" },
    { id: 39, name: "松江地方法務局" },
    { id: 40, name: "高松法務局" },
    { id: 41, name: "徳島地方法務局" },
    { id: 42, name: "高知地方法務局" },
    { id: 43, name: "松山地方法務局" },
    { id: 44, name: "福岡法務局" },
    { id: 45, name: "佐賀地方法務局" },
    { id: 46, name: "長崎地方法務局" },
    { id: 47, name: "大分地方法務局" },
    { id: 48, name: "熊本地方法務局" },
    { id: 49, name: "鹿児島地方法務局" },
    { id: 50, name: "宮崎地方法務局" },
    { id: 51, name: "那覇地方法務局" }
]

  include ActiveHash::Associations
  has_many :application_data
end