class Officer < ActiveRecord::Base
  validates :name, presence: true
  validates :position, presence: true

  has_attached_file :image, :styles => { :medium => "180x180>" }, :default_url => "/images/officers/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
