class Leader < ActiveRecord::Base
  enum role: [:coach, :assistant]
  has_many :teams
end
