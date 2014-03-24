class Project < ActiveRecord::Base
  belongs_to :term
  
  validates :organization, presence: true
  validates :description, presence: true

  has_attached_file :screenshot, 
    :styles => { :thumbnail => "120x90>", :medium => "768x576>" }, 
    :default_url => "/images/projects/missing.png",
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
  validates_attachment_content_type :screenshot, :content_type => /\Aimage\/.*\Z/
end
