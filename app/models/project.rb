class Project < ActiveRecord::Base
  belongs_to :term
  
  validates :organization, presence: true
  validates :description, presence: true

  has_attached_file :image, 
    :styles => { :thumbnail => "120x90>", :medium => "500x375>" }, 
    :default_url => "/images/projects/missing.png",
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
