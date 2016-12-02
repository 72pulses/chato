#
# Model for User related actions
#
# @author [aby]
#
class User < ApplicationRecord
  validates :email, :username, uniqueness: true

  # Assign an API key on create
  before_create do |user|
    user.uuid = user.generate_token
  end

  # Generate a unique user id
  def generate_token
    loop do
      uuid = SecureRandom.base64.tr('+/=', 'Qrt')
      break uuid unless User.exists?(uuid: uuid)
    end
  end
end
