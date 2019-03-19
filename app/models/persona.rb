class Persona < ApplicationRecord
	has_many :asignacions
	has_many :proyectos, through: :asignacions
end
