class Recipe < ApplicationRecord
  belongs_to :jam_session, optional: true
  belongs_to :author, optional: true

  serialize :tags, type: Array, coder: YAML

  validates :title, presence: true
  validates :content, presence: true

  scope :published, -> { where(published: true) }
  scope :drafts, -> { where(published: false) }

  # Return all available tags from published recipes
  def self.all_tags
    published.pluck(:tags).flatten.compact.uniq.sort
  end
end
