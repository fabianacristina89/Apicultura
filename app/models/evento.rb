class Evento < ActiveRecord::Base
  belongs_to :tipo_evento
  attr_accessible :data_prevista, :data_realizada, :status, :tipo_evento_id, :colmeias_id
  has_and_belongs_to_many :colmeias
end
