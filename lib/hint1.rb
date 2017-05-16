class Hint1  < ActiveRecord::Base
  belongs_to(:spymaster1s)
  before_save(:titlecase_name)
end
