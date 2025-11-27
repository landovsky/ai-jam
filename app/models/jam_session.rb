class JamSession < ApplicationRecord
  has_many :recipes, dependent: :nullify

  validates :title, presence: true
  validates :held_on, presence: true
end
