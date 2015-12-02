class Info < ActiveRecord::Base
	validates :nom, :prenom, :adresse, :cp, :ville, :numtel, presence: true

	belongs_to :user
end
