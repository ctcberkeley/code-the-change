class Project < ActiveRecord::Base
  belongs_to :term
  
  validates :organization, presence: true
  validates :description, presence: true
end
