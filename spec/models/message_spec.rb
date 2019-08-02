require 'rails_helper'

RSpec.describe Message, type: :model do
  it { Message.reflect_on_association(:room).macro.should eq(:belongs_to) }
  it { Message.reflect_on_association(:user).macro.should eq(:belongs_to) }
end
