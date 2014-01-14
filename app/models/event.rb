class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :location, presence: true
  validates :description, presence: true
end
