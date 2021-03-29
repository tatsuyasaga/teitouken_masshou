FactoryBot.define do
  factory :user do
    nickname {"abc"}
    name {"佐藤太郎"}
    postal_code {"810-0001"}
    address {"１丁目１番１号"}
    phone_number {"09000000000"}
    email {"a@a"}
    password {"satou1234"}
    password_confirmation {password}
  end
end