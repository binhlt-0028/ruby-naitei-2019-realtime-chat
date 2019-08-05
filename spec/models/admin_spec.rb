require 'rails_helper'

RSpec.describe Admin, type: :model do
  it { Admin.reflect_on_association(:user).macro.should eq(:belongs_to) }
  it { Admin.reflect_on_association(:room).macro.should eq(:belongs_to) }
end
