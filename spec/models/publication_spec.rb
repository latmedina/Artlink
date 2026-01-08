require 'rails_helper'

RSpec.describe Publication, type: :model do
  describe "validaciones" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:picture) }
  end

  describe "asociaciones" do
    it { should belong_to(:user) }
    it { should have_many(:requests) }
  end
end
