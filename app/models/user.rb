class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  has_many :attendances, dependent: :destroy
  has_many :jam_sessions, through: :attendances

  include ProfileVisibility
end
