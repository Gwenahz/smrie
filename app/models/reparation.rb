class Reparation < ActiveRecord::Base
  
  serialize :id_panne
  
  # has_many :smartphones
  has_many :smartphones, through: :user
  has_many :pannes
  
  belongs_to :user
end
