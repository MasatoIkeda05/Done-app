require 'rails_helper'

RSpec.describe "Users", type: :system do
  before do
    driven_by(:rack_test)
  end

  describe "creating a new user" do
    it "increases the user count by 1" do
      visit new_user_path

      fill_in "email", with: "test@example.com"
      fill_in "password", with: "password"
      fill_in "password_confirmation", with: "password"

      expect {
        click_button "新規登録"
      }.to change { User.count }.by(1)
    end
  end
end