class Recipe < ApplicationRecord
  belongs_to :jam_session, optional: true
  belongs_to :author, optional: true

  serialize :tags, type: Array, coder: YAML

  validates :title, presence: true
  validates :content, presence: true
end
