require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:location) }
    it { is_expected.to validate_presence_of(:capacity) }
    it { is_expected.to validate_presence_of(:starts_at) }
    it { is_expected.to validate_presence_of(:ends_at) }
  end

  describe "association with registration" do
    let(:guest_user) { create :user, email: "guest@user.com" }
    let(:host_user) { create :user, email: "host@user.com" }

    let!(:event) { create :event, user: host_user }
    let!(:registration) { create :registration, event: event, user: guest_user }

    it "has guests" do
      expect(event.guests).to include(guest_user)
    end
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

  describe "association with user" do
      let(:user) { create :user }

      it "belongs to a user" do
        event = user.events.build(name: "play golf")

        expect(event.user).to eq(user)
      end
  end
  # OR, go the shoulda way:

    it { is_expected.to belong_to :user}


    describe "association with category" do
      let(:event) { create :event }
      let(:event1) { create :event }

      let(:category1) { create :category, name: "Sport", events: [event] }
      let(:category2) { create :category, name: "Art", events: [event, event1] }
      let(:category3) { create :category, name: "Education", events: [event, event1] }

      it "has categories" do
        expect(event.categories).to include(category1)
        expect(event.categories).to include(category2)
        expect(event.categories).to include(category3)
        expect(event1.categories).to include(category2)
        expect(event1.categories).to include(category3)
      end
    end
    # Or we do it the shoulda way:
    it { is_expected.to have_and_belong_to_many :categories }

end
