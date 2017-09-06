require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:location) }
    it { is_expected.to validate_presence_of(:capacity) }
    it { is_expected.to validate_presence_of(:starts_at) }
    it { is_expected.to validate_presence_of(:ends_at) }
  end


  describe "#bargain?" do
    let(:bargain_event) { create :event, price: 3 }
    let(:non_bargain_event) { create :event, price: 20 }

    it "returns true if the price is smaller than 5 EUR" do
      expect(bargain_event.bargain?).to eq(true)
      expect(non_bargain_event.bargain?).to eq(false)
    end
  end

  describe ".order_by_price" do
    let!(:event1) { create :event, price: 1 }
    let!(:event2) { create :event, price: 3 }
    let!(:event3) { create :event, price: 2 }

    it "returns a sorted array of events by prices" do
      # note that they should not come out in the order that they were created
      expect(Event.order_by_price).to eq([event1, event3, event2])
    end
  end
end
