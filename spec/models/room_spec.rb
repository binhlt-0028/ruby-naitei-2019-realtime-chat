require 'rails_helper'

RSpec.describe Room, type: :model do
  it { Room.reflect_on_association(:messages).macro.should eq(:has_many) }
  it { Room.reflect_on_association(:admins).macro.should eq(:has_many) }
  it { Room.reflect_on_association(:invites).macro.should eq(:has_many) }
  it { Room.reflect_on_association(:join_rooms).macro.should eq(:has_many) }
end
