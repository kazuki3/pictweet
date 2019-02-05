require 'rails_helper'
describe User do
  describe '#create' do
    it "is invalid without a nickname" do
      user = build(:user, nickname: "")
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end
  end

  describe '#create' do
    it "is invalid without a email" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end
  end

  describe '#create' do
    it "is invalid without a password" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end
  end

  describe '#create' do
    it "is invalid without a password_confirmation" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    end
  end

  describe '#create' do
    it 'is invalid with a duplicate email address' do
      user = create(:user)
      another_user = build(:user)
      another_user.valid?
      expect(another_user.errors[:email]).to include("has already been taken")
    end
  end

  describe '#create' do
    it 'is valid with a nickname, email, password, password_confirmation' do
      user = create(:user)
      user.valid?
      expect(user).to be_valid
    end
  end

  describe '#create' do
    it 'is invalid with a nickname that has more than 7 characters' do
      user = build(:user, nickname: "okymkzk")
      user.valid?
      expect(user.errors[:nickname]).to include("is too long (maximum is 6 characters)")
    end
  end

  describe '#create' do
    it 'is valid with a nickname that has no more than 6 characters' do
      user = create(:user, nickname: "aaaaaa")
      user.valid?
      expect(user).to be_valid
    end
  end

  describe '#create' do
    it 'is invalid with a password that has no more than 5 characters' do
      user = build(:user, password: "00000", password_confirmation: "00000")
      user.valid?
      expect(user.errors[:password]).to include("is too short (minimum is 6 characters)")
    end
  end

  describe '#create' do
    it 'is valid with a password that has more than 8 characters' do
      user = create(:user, password: "00000000")
      user.valid?
      expect(user).to be_valid
    end
  end

end
