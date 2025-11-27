class Author < ApplicationRecord
  has_many :recipes, dependent: :nullify

  validates :name, presence: true
end
