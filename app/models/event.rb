class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :start, presence: true
  validates :end, presence: true
  validates :location, presence: true
  validates :description, presence: true
end
