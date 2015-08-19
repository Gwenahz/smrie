class Info < ActiveRecord::Base
	validates :nom, :prenom, :adresse, :cp, :ville, presence: true

	belongs_to :user
end
