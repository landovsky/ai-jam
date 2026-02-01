class JamSession < ApplicationRecord
  include WaitlistManagement

  has_many :recipes, dependent: :nullify
  has_many :attendances, dependent: :destroy
  has_many :users, through: :attendances

  validates :title, presence: true
  validates :held_on, presence: true
  validates :capacity, numericality: { greater_than: 0, allow_nil: true }

  scope :published_only, -> { where(published: true) }
  scope :upcoming, -> { published_only.where('held_on >= ?', Date.today).order(held_on: :asc) }
  scope :past, -> { published_only.where('held_on < ?', Date.today).order(held_on: :desc) }

  def past?
    held_on < Date.today
  end

  def user_attending?(user)
    return false if user.nil?
    attendances.attending_only.exists?(user_id: user.id)
  end

  # Returns the number of spots remaining (nil if no capacity limit)
  def spots_remaining
    return nil if capacity.nil?
    capacity - current_attending_count
  end

  # Returns true if the event is at capacity
  def at_capacity?
    return false if capacity.nil?
    current_attending_count >= capacity
  end

  # Returns true if there's a waitlist
  def has_waitlist?
    attendances.waitlisted.any?
  end

  # Returns the next waitlisted attendance record
  def next_waitlisted_user
    attendances.waitlisted.first
  end

  private

  # Returns current count of attending users
  # Use the preloaded count if available (from index query), otherwise query
  def current_attending_count
    if has_attribute?(:attendees_count)
      attendees_count.to_i
    else
      attendances.attending_only.count
    end
  end
end
