class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  serialize :idphones
  validates :prenom, presence: true
  
  has_many :smartphones
  has_many :pannes
  has_many :reparations
  has_many :secteurs

end
