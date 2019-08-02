require 'rails_helper'

RSpec.describe User, type: :model do
  it { Room.reflect_on_association(:messages).macro.should eq(:has_many) }
  it { Room.reflect_on_association(:admins).macro.should eq(:has_many) }
  it { Room.reflect_on_association(:invites).macro.should eq(:has_many) }
  it { Room.reflect_on_association(:join_rooms).macro.should eq(:has_many) }
  
  it "is invalid without a name" do
    user = User.new(name: nil)
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end
  
  it "is invalid without a email" do
    user = User.new(email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end

  it "is invalid with a duplicate email address" do
    User.create(
      name: "Test",
      email: "tester@example.com",
      password_digest: "dottle-nouveau-pavilion-tights-furze",
    )
    user = User.new(
      name: "Jone",
      email: "tester@example.com",
      password_digest: "dottle-nouveau-pavilion-tights-furze",
    )
    user.valid?
    expect(user.errors[:email]).to include("has already been taken")
  end
end
