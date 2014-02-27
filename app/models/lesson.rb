class Lesson < ActiveRecord::Base
  has_many :lectures, dependent: :destroy
  has_many :tutorials, dependent: :destroy

  validates :week, presence: true
  validates :date, presence: true
  validates :topic, presence: true
end
