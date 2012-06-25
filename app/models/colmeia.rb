class Colmeia < ActiveRecord::Base
  belongs_to :area
  attr_accessible :nome, :area_id
end
