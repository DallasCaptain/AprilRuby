require 'rails_helper'

RSpec.describe User, type: :model do
  context "With valid attributes" do
    it 'should save' do
      expect(build(:user, :female)).to be_valid
    end
    it 'should also save' do
      expect(build(:user, :male).first_name).to eq("John")
    end
  end
  context "With invalid attributes" do 
    it "should not save if first_name field is blank" do
      expect(build(:user, first_name: "")).to be_invalid
    end
    it "should not save if last_name field is blank" do
      expect(build(:user, last_name: "")).to be_invalid
    end
    it "should not save if email already exists" do
      create(:user)
      expect(build(:user)).to be_invalid
    end
    it "should not save if invalid email format" do
      expect(build(:user, email: "invalidEmail")).to be_invalid
    end
  end
end
