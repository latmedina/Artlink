require 'rails_helper'

RSpec.describe Request, type: :model do
  describe "validaciones" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:contact) }
    it { should validate_presence_of(:picture) }
    it { should validate_presence_of(:status) }
    it { should validate_inclusion_of(:rating).in_range(1..5).allow_nil }
  end

  describe "asociaciones" do
    it { should belong_to(:publication) }
    it { should belong_to(:sender).class_name("User") }
    it { should belong_to(:receiver).class_name("User") }
  end
end
