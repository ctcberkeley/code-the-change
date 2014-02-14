class Lesson < ActiveRecord::Base
  validates :week, presence: true
  validates :date, presence: true
  validates :topic, presence: true
end
