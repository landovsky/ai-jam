class JamSession < ApplicationRecord
  has_many :recipes, dependent: :nullify
  has_many :attendances, dependent: :destroy
  has_many :users, through: :attendances

  validates :title, presence: true
  validates :held_on, presence: true

  scope :published_only, -> { where(published: true) }
  scope :upcoming, -> { published_only.where('held_on >= ?', Date.today).order(held_on: :asc) }
  scope :past, -> { published_only.where('held_on < ?', Date.today).order(held_on: :desc) }

  def user_attending?(user)
    return false if user.nil?
    users.exists?(user.id)
  end
end
