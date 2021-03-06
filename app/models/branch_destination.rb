class BranchDestination < ActiveHash::Base
  self.data = [
    # 札幌法務局
    { id: 1, name: "本局"}, { id: 2, name: "南出張所"}, { id: 3, name: "北出張所"},
    { id: 4, name: "西出張所"}, { id: 5, name: "白石出張所"}, { id: 6, name: "江別出張所"},
    { id: 7, name: "恵庭出張所"}, { id: 8, name: "江別出張所"}, { id: 9, name: "恵庭出張所"},
    { id: 10, name: "岩見沢支局"}, { id: 11, name: "滝川支局"}, { id: 12, name: "室蘭支局"},
    { id: 13, name: "苫小牧支局"}, { id: 14, name: "日高支局"}, { id: 15, name: "小樽支局"},
    { id: 16, name: "倶知安支局"},
    # 函館地方法務局
    { id: 17, name: "本局"}, { id: 18, name: "江差支局"}, { id: 19, name: "八雲支局"},
    # 旭川地方法務局
    { id: 20, name: "本局"}, { id: 21, name: "名寄支局"}, { id: 22, name: "紋別支局"},
    { id: 23, name: "留萌支局"}, { id: 24, name: "稚内支局"},
    # 釧路地方法務局
    { id: 25, name: "本局"}, { id: 26, name: "帯広支局"}, { id: 27, name: "北見支局"},
    { id: 28, name: "根室支局"}, { id: 29, name: "中標津出張所"},
    # 仙台法務局
    { id: 30, name: "本局"}, { id: 31, name: "名取出張所"},{ id: 32, name: "塩竈支局"},
    { id: 33, name: "大河原支局"}, { id: 34, name: "古川支局"}, { id: 35, name: "石巻支局"},
    { id: 36, name: "登米支局"}, { id: 37, name: "気仙沼支局"},
    # 福島地方法務局
    { id: 38, name: "本局"}, { id: 39, name: "相馬支局"}, { id: 40, name: "郡山支局"},
    { id: 41, name: "白河支局"}, { id: 42, name: "若松支局"}, { id: 43, name: "いわき支局"},
    { id: 44, name: "二本松出張所"},{ id: 45, name: "田島出張所"}, { id: 46, name: "富岡出張所"},
    # 山形地方法務局
    { id: 47, name: "本局"},{ id: 48, name: "村山出張所"}, { id: 49, name: "寒河江支局"},
    { id: 50, name: "新庄支局"}, { id: 51, name: "米沢支局"}, { id: 52, name: "鶴岡支局"},
    { id: 53, name: "酒田支局"},
    # 盛岡地方法務局
    { id: 54, name: "本局"}, { id: 55, name: "花巻支局"}, { id: 56, name: "二戸支局"},
    { id: 57, name: "宮古支局"}, { id: 58, name: "水沢支局"}, { id: 59, name: "大船渡出張所"},
    # 秋田地方法務局
    { id: 60, name: "本局"}, { id: 61, name: "能代支局"}, { id: 62, name: "本荘支局"},
    { id: 63, name: "大館支局"}, { id: 64, name: "大曲支局"},
    # 青森地方法務局
    { id: 65, name: "本局"}, { id: 66, name: "むつ支局"}, { id: 67, name: "五所川原支局"},
    { id: 68, name: "弘前支局"}, { id: 69, name: "八戸支局"}, { id: 70, name: "十和田支局"},
    # 東京法務局
    { id: 71, name: "本局"}, { id: 72, name: "板橋出張所"}, { id: 73, name: "江戸川出張所"},
    { id: 74, name: "北出張所"}, { id: 75, name: "品川出張所"}, { id: 76, name: "渋谷出張所"},
    { id: 77, name: "城南出張所"}, { id: 78, name: "城北出張所"}, { id: 79, name: "杉並出張所"},
    { id: 80, name: "新宿出張所"}, { id: 81, name: "墨田出張所"}, { id: 82, name: "世田谷出張所"},
    { id: 83, name: "台東出張所"}, { id: 84, name: "立川出張所"}, { id: 85, name: "田無出張所"},
    { id: 86, name: "豊島出張所"}, { id: 87, name: "中野出張所"}, { id: 88, name: "西多摩支局"},
    { id: 89, name: "練馬出張所"}, { id: 90, name: "八王子支局"}, { id: 91, name: "府中市局"},
    { id: 92, name: "町田出張所"}, { id: 93, name: "港出張所"},
    # 横浜地方法務局
    { id: 94, name: "本局"}, { id: 95, name: "神奈川出張所"}, { id: 96, name: "金沢出張所"},
    { id: 97, name: "青葉出張所"}, { id: 98, name: "港北出張所"}, { id: 99, name: "戸塚出張所"},
    { id: 100, name: "栄出張所"}, { id: 101, name: "旭出張所"}, { id: 102, name: "湘南支局"},
    { id: 103, name: "川崎支局"}, { id: 104, name: "麻生出張所"}, { id: 105, name: "横須賀支局"},
    { id: 106, name: "西湘二宮支局"}, { id: 107, name: "厚木支局"}, { id: 108, name: "大和出張所"},
    { id: 109, name: "相模原支局"},
    # さいたま地方法務局
    { id: 110, name: "本局"}, { id: 111, name: "川口出張所"}, { id: 112, name: "鴻巣出張所"},
    { id: 113, name: "上尾出張所"}, { id: 114, name: "志木出張所"}, { id: 115, name: "川越支局"},
    { id: 116, name: "坂戸出張所"}, { id: 117, name: "熊谷支局"}, { id: 118, name: "本庄出張所"},
    { id: 119, name: "秩父支局"}, { id: 120, name: "所沢支局"}, { id: 121, name: "飯能出張所"},
    { id: 122, name: "東松山支局"}, { id: 123, name: "越谷支局"}, { id: 124, name: "春日部出張所"},
    { id: 125, name: "草加出張所"}, { id: 126, name: "久喜支局"},
    # 千葉地方法務局
    { id: 127, name: "本局"}, { id: 128, name: "市原出張所"}, { id: 129, name: "東金出張所"},
    { id: 130, name: "佐倉支局"}, { id: 131, name: "成田出張所"}, { id: 132, name: "茂原支局"},
    { id: 133, name: "いすみ出張所"}, { id: 134, name: "松戸支局"}, { id: 135, name: "柏支局"},
    { id: 136, name: "木更津支局"}, { id: 137, name: "館山支局"}, { id: 138, name: "匝瑳支局"},
    { id: 139, name: "香取支局"}, { id: 140 , name: "船橋支局"}, { id: 141, name: "市川支局"},
    # 水戸地方法務局
    { id: 142, name: "本局"}, { id: 143, name: "日立支局"}, { id: 144, name: "常陸太田支局"},
    { id: 145, name: "土浦支局"}, { id: 146, name: "つくば出張所"}, { id: 147, name: "龍ケ崎支局"},
    { id: 148, name: "取手出張所"}, { id: 149, name: "鹿嶋支局"}, { id: 150, name: "下妻支局"},
    { id: 151, name: "筑西出張所"},
    # 宇都宮地方法務局
    { id: 152, name: "本局"}, { id: 153, name: "日光支局"}, { id: 154, name: "真岡支局"},
    { id: 155, name: "大田原支局"}, { id: 156, name: "栃木支局"}, { id: 157, name: "足利支局"},
    { id: 158, name: "小山出張所"},
    # 前橋地方法務局
    { id: 159, name: "本局"}, { id: 160, name: "高崎支局"}, { id: 161, name: "桐生支局"},
    { id: 162, name: "伊勢崎支局"}, { id: 163, name: "太田支局"}, { id: 164, name: "沼田支局"},
    { id: 165, name: "富岡支局"}, { id: 166, name: "中之条支局"}, { id: 167, name: "渋川出張所"},
    # 静岡地方法務局
    { id: 168, name: "本局"}, { id: 169, name: "沼津支局"}, { id: 170, name: "富士支局"},
    { id: 171, name: "下田支局"}, { id: 172, name: "浜松支局"}, { id: 173, name: "掛川支局"},
    { id: 174, name: "藤枝支局"}, { id: 175, name: "袋井支局"}, { id: 176, name: "清水出張所"},
    { id: 177, name: "熱海出張所"}, { id: 178, name: "磐田出張所"},
    # 甲府地方法務局
    { id: 179, name: "本局"}, { id: 180, name: "鰍沢支局"}, { id: 181, name: "大月支局"},
    { id: 182, name: "韮崎出張所"}, { id: 183, name: "吉田出張所"},
    # 長野地方法務局
    { id: 184, name: "本局"}, { id: 185, name: "飯山支局"}, { id: 186, name: "上田支局"},
    { id: 187, name: "佐久支局"}, { id: 188, name: "松本支局"}, { id: 189, name: "木曽支局"},
    { id: 190, name: "大町支局"}, { id: 191, name: "諏訪支局"}, { id: 192, name: "飯田支局"},
    { id: 193, name: "伊那支局"},
    # 新潟地方法務局
    { id: 194, name: "本局"}, { id: 195, name: "長岡支局"}, { id: 196, name: "三条支局"},
    { id: 197, name: "柏崎支局"}, { id: 198, name: "新発田支局"}, { id: 199, name: "新津支局"},
    { id: 200, name: "十日町支局"}, { id: 201, name: "村上支局"}, { id: 202, name: "糸魚川支局"},
    { id: 203, name: "上越支局"}, { id: 204, name: "佐渡支局"}, { id: 205, name: "南魚沼支局"},
    # 名古屋法務局
    { id: 206, name: "本局"}, { id: 207, name: "熱田出張所"}, { id: 208, name: "名東出張所"},
    { id: 209, name: "春日井支局"}, { id: 210, name: "津島支局"}, { id: 211, name: "一宮支局"},
    { id: 212, name: "半田支局"}, { id: 213, name: "岡崎支局"}, { id: 214, name: "刈谷支局"},
    { id: 215, name: "豊田支局"}, { id: 216, name: "西尾支局"}, { id: 217, name: "豊橋支局"},
    { id: 218, name: "豊川出張所"}, { id: 219, name: "新城支局"},
    # 津地方法務局
    { id: 220, name: "本局"}, { id: 221, name: "鈴鹿出張所"}, { id: 222, name: "四日市支局"},
    { id: 223, name: "伊賀支局"}, { id: 224, name: "松阪支局"}, { id: 225, name: "桑名支局"},
    { id: 226, name: "伊勢支局"}, { id: 227, name: "熊野支局"}, { id: 228, name: "尾鷲出張所"}, 
    # 岐阜地方法務局
    { id: 229, name: "本局"}, { id: 230, name: "八幡支局"}, { id: 231, name: "大垣支局"},
    { id: 232, name: "美濃加茂支局"}, { id: 233, name: "多治見支局"}, { id: 234, name: "中津川支局"},
    { id: 235, name: "高山支局"},
    # 福井地方法務局
    { id: 236, name: "本局"}, { id: 237, name: "武生支局"}, { id: 238, name: "敦賀支局"},
    { id: 239, name: "小浜支局"},
    # 金沢地方法務局
    { id: 240, name: "本局"}, { id: 241, name: "小松支局"}, { id: 242, name: "七尾支局"},
    { id: 243, name: "輪島支局"},
    # 富山地方法務局
    { id: 244, name: "本局"}, { id: 245, name: "高岡支局"}, { id: 246, name: "砺波支局"},
    { id: 247, name: "魚津支局"},
    # 大阪法務局
    { id: 248, name: "本局"}, { id: 249, name: "北出張所"}, { id: 250, name: "天王寺出張所"},
    { id: 251, name: "池田出張所"}, { id: 252, name: "枚方出張所"}, { id: 253, name: "守口出張所"},
    { id: 254, name: "北大阪支局"}, { id: 255, name: "東大阪支局"}, { id: 256, name: "堺支局"},
    { id: 257, name: "富田林支局"}, { id: 258, name: "岸和田支局"},
    # 京都地方法務局
    { id: 259, name: "本局"}, { id: 260, name: "嵯峨出張所"}, { id: 261, name: "伏見出張所"},
    { id: 262, name: "宇治支局"}, { id: 263, name: "木津出張所"}, { id: 264, name: "園部支局"},
    { id: 265, name: "宮津支局"}, { id: 266, name: "京丹後支局"}, { id: 267, name: "舞鶴支局"},
    { id: 268, name: "福知山支局"},
    # 神戸地方法務局
    { id: 269, name: "本局"}, { id: 270, name: "須磨出張所"}, { id: 271, name: "北出張所"},
    { id: 272, name: "東神戸出張所"}, { id: 273, name: "西宮支局"}, { id: 274, name: "伊丹支局"},
    { id: 275, name: "三田出張所"}, { id: 276, name: "尼崎支局"}, { id: 277, name: "明石支局"},
    { id: 278, name: "柏原支局"}, { id: 279, name: "姫路支局"}, { id: 280, name: "加古川支局"},
    { id: 281, name: "社支局"}, { id: 282, name: "龍野支局"}, { id: 283, name: "豊岡支局"},
    { id: 284, name: "八鹿出張所"}, { id: 285, name: "洲本支局"},
    # 奈良地方法務局
    { id: 286, name: "本局"}, { id: 287, name: "葛城支局"}, { id: 288, name: "桜井支局"},
    { id: 289, name: "五條支局"}, { id: 290, name: "橿原出張所"},
    # 大津地方法務局
    { id: 291, name: "本局"}, { id: 292, name: "甲賀支局"}, { id: 293, name: "彦根支局"},
    { id: 294, name: "長浜支局"}, { id: 295, name: "高島出張所"}, { id: 296, name: "東近江出張所"},
    # 和歌山地方法務局
    { id: 297, name: "本局"}, { id: 298, name: "橋本支局"}, { id: 299, name: "田辺支局"},
    { id: 300, name: "御坊支局"}, { id: 301, name: "新宮支局"},
    # 広島法務局
    { id: 302, name: "本局"}, { id: 303, name: "可部出張所"}, { id: 304, name: "廿日市支局"},
    { id: 305, name: "東広島支局"}, { id: 306, name: "呉支局"}, { id: 307, name: "尾道支局"},
    { id: 308, name: "福山支局"}, { id: 309, name: "三次支局"},
    # 山口地方法務局
    { id: 310, name: "本局"}, { id: 311, name: "周南支局"}, { id: 312, name: "萩支局"},
    { id: 313, name: "岩国支局"}, { id: 314, name: "下関支局"}, { id: 315, name: "宇部支局"},
    { id: 316, name: "柳井出張所"},
    # 岡山地方法務局
    { id: 317, name: "本局"}, { id: 318, name: "岡山西出張所"}, { id: 319, name: "備前支局"},
    { id: 320, name: "倉敷支局"}, { id: 321, name: "笠岡支局"}, { id: 322, name: "高梁支局"},
    { id: 323, name: "津山支局"},
    # 鳥取地方法務局
    { id: 324, name: "本局"}, { id: 325, name: "倉吉支局"}, { id: 326, name: "米子支局"},
    # 松江地方法務局
    { id: 327, name: "本局"}, { id: 328, name: "出雲支局"}, { id: 329, name: "浜田支局"},
    { id: 330, name: "益田支局"}, { id: 331, name: "西郷支局"},
    # 高松法務局
    { id: 332, name: "本局"}, { id: 333, name: "丸亀支局"}, { id: 334, name: "観音寺支局"},
    { id: 335, name: "寒川出張所"},
    # 徳島地方法務局
    { id: 336, name: "本局"}, { id: 337, name: "阿南支局"}, { id: 338, name: "美馬支局"},
    # 高知地方法務局
    { id: 339, name: "本局"}, { id: 340, name: "香美支局"}, { id: 341, name: "須崎支局"},
    { id: 342, name: "安芸支局"}, { id: 343, name: "四万十支局"},
    # 松山地方法務局
    { id: 344, name: "本局"}, { id: 345, name: "砥部出張所"}, { id: 346, name: "大洲支局"},
    { id: 347, name: "西条支局"}, { id: 348, name: "四国中央支局"}, { id: 349, name: "今治支局"},
    { id: 350, name: "宇和島支局"},
    # 福岡法務局
    { id: 351, name: "本局"}, { id: 352, name: "西新出張所"}, { id: 353, name: "粕屋出張所"},
    { id: 354, name: "福間出張所"}, { id: 355, name: "筑紫支局"}, { id: 356, name: "朝倉支局"},
    { id: 357, name: "飯塚支局"}, { id: 358, name: "直方支局"}, { id: 359, name: "柳川支局"},
    { id: 360, name: "八女支局"}, { id: 361, name: "北九州支局"}, { id: 362, name: "八幡出張所"},
    { id: 363, name: "行橋支局"}, { id: 364, name: "田川支局"}, { id: 365, name: "久留米支局"},
    # 佐賀地方法務局
    { id: 366, name: "本局"}, { id: 367, name: "鳥栖出張所"}, { id: 368, name: "武雄支局"},
    { id: 369, name: "伊万里支局"}, { id: 370, name: "唐津支局"},
    # 長崎地方法務局
    { id: 371, name: "本局"}, { id: 372, name: "諫早支局"}, { id: 373, name: "島原支局"},
    { id: 374, name: "佐世保支局"}, { id: 375, name: "平戸支局"}, { id: 376, name: "壱岐支局"},
    { id: 377, name: "五島支局"}, { id: 378, name: "対馬支局"},
    # 大分地方法務局
    { id: 379, name: "本局"}, { id: 380, name: "杵築支局"}, { id: 381, name: "佐伯支局"},
    { id: 382, name: "竹田支局"}, { id: 383, name: "中津支局"}, { id: 384, name: "宇佐支局"},
    { id: 385, name: "日田支局"},
    # 熊本地方法務局
    { id: 386, name: "本局"}, { id: 387, name: "宇土支局"}, { id: 388, name: "玉名支局"},
    { id: 389, name: "山鹿支局"}, { id: 390, name: "阿蘇大津支局"}, { id: 391, name: "八代支局"},
    { id: 392, name: "人吉支局"}, { id: 393, name: "天草支局"},
    # 鹿児島地方法務局
    { id: 394, name: "本局"}, { id: 395, name: "霧島支局"}, { id: 396, name: "知覧支局"},
    { id: 397, name: "川内支局"}, { id: 398, name: "鹿屋支局"}, { id: 399, name: "奄美支局"},
    { id: 400, name: "種子島出張所"}, { id: 401, name: "屋久島出張所"}, { id: 402, name: "南さつま出張所"},
    { id: 403, name: "出水出張所"}, { id: 404, name: "曽於出張所"},
    # 宮崎地方法務局
    { id: 405, name: "本局"}, { id: 406, name: "都城支局"}, { id: 407, name: "延岡支局"},
    { id: 408, name: "日南支局"}, { id: 409, name: "高鍋出張所"}, { id: 410, name: "小林出張所"},
    # 那覇地方法務局
    { id: 411, name: "本局"}, { id: 412, name: "沖縄支局"}, { id: 413, name: "名護支局"},
    { id: 414, name: "宮古島支局"}, { id: 415, name: "石垣支局"}, { id: 416, name: "宜野湾出張所"}
  ]
  
  include ActiveHash::Associations
  has_many :destinations
end