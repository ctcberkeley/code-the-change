class Officer < ActiveRecord::Base
  validates :name, presence: true
  validates :position, presence: true

  has_attached_file :image, 
    :styles => { :thumbnail => "100x100>", :medium => "180x180>" }, 
    :default_url => "/images/officers/missing.png",
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
