class Jugador
  include Mongoid::Document
  field :nombre, type: String
  field :apellidos, type: String
  field :apodo, type: String
  field :foto, type: String
  field :dorsal, type: Integer
  field :posicion, type: String
  field :idrf, type: Integer
  field :nacion, type: String
  field :nacion_logo, type: String
  field :edad, type: Integer

  validates :apodo, presence: true
end
