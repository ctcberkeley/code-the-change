class Assignment < ActiveRecord::Base
  belongs_to :lesson

  validates :title, presence: true
  validates :due, presence: true
  validates :description, presence: true
end
