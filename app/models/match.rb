class Match < ActiveRecord::Base
  belongs_to :stat
  has_many :players
end
