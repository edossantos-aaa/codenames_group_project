class Player2 < ActiveRecord::Base
  has_and_belongs_to_many(:game)
end
