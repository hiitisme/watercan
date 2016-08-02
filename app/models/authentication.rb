class Authentication < ApplicationRecord

  belongs_to :distributor
  belongs_to :user

  validates :email,presence: true



  before_save :create_remember_token

  private
  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end

end
