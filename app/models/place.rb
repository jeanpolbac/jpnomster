class Place < ApplicationRecord
  belongs_to :user
  validates :name, length: { minimum: 3, too_short: " - %{count} characters is the minimum allowed" }
  validates :address, presence: true
  validates :description, presence: true
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
