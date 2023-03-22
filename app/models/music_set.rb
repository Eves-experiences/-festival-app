class MusicSet < ApplicationRecord
  has_many :stages
  has_many :djs
end
