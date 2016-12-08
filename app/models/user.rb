#
# User
#
# Table: users
#
# @author aby
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  rolify
  validates :email, uniqueness: true

  has_secure_token :uuid
  has_secure_token :authentication_token
end
