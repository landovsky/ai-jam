class Author < ApplicationRecord
  belongs_to :user, optional: true
  has_many :recipes, dependent: :nullify

  validates :name, presence: true
end
