class Project < ActiveRecord::Base
  validates :organization, presence: true
  validates :description, presence: true
end
