require 'rails_helper'

RSpec.describe "Users", type: :system do
  before do
    driven_by(:rack_test)
  end

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
end