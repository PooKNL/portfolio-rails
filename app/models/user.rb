class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # Deleted :registerable to avoid users from signing up for admin role.
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
end
