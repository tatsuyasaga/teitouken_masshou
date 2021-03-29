require 'rails_helper'

RSpec.describe User, type: :model do
  describe "ユーザー新規登録" do
    before do
      @user = FactoryBot.build(:user)
    end

    context "登録できる場合" do
      it "適切な入力をすると登録できる" do
        expect(@user).to be_valid
      end
    end

    context "登録できない場合" do
      it "nicknameが空欄だと登録できない" do
        @user.nickname = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end

      it "nameが空欄だと登録できない" do
        @user.name = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Name can't be blank")
      end

      it "postal_codeが空欄だと登録できない" do
        @user.postal_code = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Postal code can't be blank")
      end

      it "postal_codeが数字七桁未満だと登録できない" do
        @user.postal_code = "123456"
        @user.valid?
        expect(@user.errors.full_messages).to include("Postal code 数字７桁で入力してください")
      end

      it "postal_codeが全角数字だと登録できない" do
        @user.postal_code = "１２３４５６７"
        @user.valid?
        expect(@user.errors.full_messages).to include("Postal code 数字７桁で入力してください")
      end

      it "postal_codeが文字列だと登録できない" do
        @user.postal_code = "あいうえおかき"
        @user.valid?
        expect(@user.errors.full_messages).to include("Postal code 数字７桁で入力してください")
      end

      it "addressが空欄だと登録できない" do
        @user.address = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Address can't be blank")
      end

      it "phone_numberが空欄だと登録できない" do
        @user.phone_number = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Phone number can't be blank")
      end

      it "emailが空欄だと登録できない" do
        @user.email = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end

      it "emailが他のユーザーと重複すると登録できない" do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Email has already been taken")
      end

      it "emailは@を含まないと登録できない" do
        @user.email = "aa"
        @user.valid?
        expect(@user.errors.full_messages).to include("Email is invalid")
      end

      it "passwordが空欄だと登録できない" do
        @user.password = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end

      it "passwordは半角英字のみでは登録できない" do
        @user.password = "abcdefgh"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password", "Password 半角英数字混合で入力してください")
      end

      it "passwordは半角数字のみでは登録できない" do
        @user.password = "12345678"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password", "Password 半角英数字混合で入力してください")
      end

      it "password_confirmationが空欄だと登録できない" do
        @user.password = "abcd1234"
        @user.password_confirmation = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end

      it "password_confirmationはpasswordと一致しないと登録できない" do
        @user.password = "abcd1234"
        @user.password_confirmation = "abcd123"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
    end
  end
end
