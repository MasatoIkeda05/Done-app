require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validation' do
    example "適切なフォーマットのemailのみ許可する" do
      user = build(:user, email: 'valid@example.com')
      expect(user).to be_valid
    end

    example "適切なフォーマットでないemailは許可しない" do
      user = build(:user, email: 'testmail.com')
      expect(user).to be_invalid
    end
  end
end
