require 'rails_helper'

RSpec.describe User, type: :model do

  it "encypts the password using BCrypt" do
    expect(BCrypt::Password).to receive(:create)
    User.new(username: "mary_mack", password: "abcdef")
  end

  it "does not save passwords to the database" do
      User.create!(username: "mary_mack", password: "abcdef")
      user = User.find_by_username("mary_mack")
      expect(user.password).not_to be("abcdef")
    end




  it { should validate_presence_of(:username)}
  it { should validate_presence_of(:password_digest)}
  it { should validate_presence_of(:session_token)}


end
