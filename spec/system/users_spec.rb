require 'rails_helper'

RSpec.describe "UsersSpec.rbs", type: :system do
  describe "ユーザー登録" do
    it "正しい入力がされた時、新しいユーザーデータが作成される" do
      visit new_user_path
      fill_in "email", with: "testuser"
      fill_in "password", with: "password"
      fill_in "password_confirmation", with: "password"
      click_button "新規登録"

      expect {subject}.to change {User.count}.by(1)
    end
  end
end
