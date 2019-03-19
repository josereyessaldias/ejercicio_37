class Proyecto < ApplicationRecord
	has_many :asignacions
	has_many :personas, through: :asignacions
end
