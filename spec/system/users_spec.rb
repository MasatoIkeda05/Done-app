require 'rails_helper'

RSpec.describe "Users", type: :system do
  before do
    driven_by(:rack_test)
  end

  let!(:user) { create(:user) }

  describe "ユーザーの新規登録" do
    it "正しい入力をした時、新しいユーザーが作成されることを確認する" do
      visit sign_up_path

      fill_in "email", with: "test@example.com"
      fill_in "password", with: "password"
      fill_in "password_confirmation", with: "password"

      expect {
        click_button "新規登録"
      }.to change { User.count }.by(1)
    end
  end

  describe "ユーザーログイン" do
    it "ログインに成功することを確認する" do
      visit login_path

      fill_in "session_email", with: user.email
      fill_in "session_password", with: user.password

      click_button "log in"

      expect(page).to have_content "今日の取り組みを記録しましょう"
    end

    it "ログインに失敗することを確認する" do
      visit login_path

      fill_in "session_email", with: user.email
      fill_in "session_password", with: "wrong_password"

      click_button "log in"

      expect(page).to have_content "ログインに失敗しました"
    end

  end

end