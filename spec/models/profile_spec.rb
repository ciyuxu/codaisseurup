require 'rails_helper'

RSpec.describe Profile, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe ".by_initial" do
    subject { Profile.by_initial("S") }

    let(:alex)    { create :profile, first_name: "Alex" }
    let(:selene)  { create :profile, first_name: "Selene" }
    let(:stefan)    { create :profile, first_name: "Stefan" }

    it "returns the profiles that match the initial" do
      expect(subject).to match_array([stefan, selene])
    end

    it "is sorted on first_name" do
      expect(subject).to eq([selene, stefan])
    end
  end
end
