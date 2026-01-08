require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validaciones" do
    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:username) }
    it { should validate_length_of(:biography).is_at_most(500) }
  end

  describe "asociaciones" do
    it { should have_many(:publications) }
    it { should have_many(:sent_requests).class_name("Request") }
    it { should have_many(:received_requests).class_name("Request") }
  end
end
