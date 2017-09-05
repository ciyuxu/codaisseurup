class Event < ApplicationRecord
    belongs_to :user

    validates :event_type, presence: true
    validates :event_time, presence: true
    validates :event_location, presence: true
    validates :event_accommodate, presence: true
    validates :event_description, presence: true, length: { maximum: 500 }
    validates :price, presence: true


end
