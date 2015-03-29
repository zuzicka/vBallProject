class Team < ActiveRecord::Base
  belongs_to :club
  has_many :leaders
  has_many :players
  has_many :stats
  has_many :coaching_tables
end
