class Game < ActiveRecord::Base
  validates_presence_of :home, :away
end
