class Asignacion < ApplicationRecord
  belongs_to :persona
  belongs_to :proyecto

  validates :persona_id, uniqueness: { scope: :proyecto_id,
    message: "El proyecto ya fue asignado a esta persona" }
end
