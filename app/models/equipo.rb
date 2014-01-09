class Equipo
  include Mongoid::Document
  field :nombre, type: String
  field :logo, type: String
  field :idrf, type: Integer
end
