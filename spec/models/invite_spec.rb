require 'rails_helper'

RSpec.describe Invite, type: :model do
  it { Invite.reflect_on_association(:room).macro.should eq(:belongs_to) }
end
