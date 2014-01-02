class Term < ActiveRecord::Base
  has_many :projects

  validates :season, presence: true
  validates :year, 
    presence: true,
    format: { with: /(19|20)\d{2}/i }
end
