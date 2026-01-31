class User < ApplicationRecord
  has_secure_password
  has_one :author, dependent: :nullify

  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  enum :role, { member: 0, topic_manager: 1, admin: 2 }, default: :member

  def can_edit_recipe?(recipe)
    return false if recipe.nil?

    # Admins can edit anything
    return true if admin?

    # Topic managers can edit anything (future: scope to their jam_session)
    return true if topic_manager?

    # Users can edit their own recipes (via Author link)
    return true if author.present? && recipe.author_id == author.id

    false
  end

  def can_publish_recipe?
    admin? || topic_manager?
  end
end
