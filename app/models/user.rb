#
# User
#
# Table: users
#
# @author aby
#
class User < ApplicationRecord
  validates :email, :username, uniqueness: true

  has_secure_token :uuid
  has_secure_token :authentication_token
end
