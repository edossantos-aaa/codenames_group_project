class Game < ActiveRecord::Base
  has_and_belongs_to_many(:spymaster1s)

end
