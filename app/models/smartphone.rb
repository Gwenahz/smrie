class Smartphone < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "200x>", :thumb => "100x100>" }, :default_url => "default.jpg"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  validates :marque, :modele, presence: true
  validates_attachment_presence :image
  
  belongs_to :user
  belongs_to :reparation
  belongs_to :stock
  
end
