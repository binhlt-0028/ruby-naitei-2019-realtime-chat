require 'rails_helper'

RSpec.describe JoinRoom, type: :model do
  it { JoinRoom.reflect_on_association(:room).macro.should eq(:belongs_to) }
  it { JoinRoom.reflect_on_association(:user).macro.should eq(:belongs_to) }
end
