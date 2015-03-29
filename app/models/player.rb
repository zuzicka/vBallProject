class Player < ActiveRecord::Base
  belongs_to :team
  has_many :matches
  has_many :positions
end
